
package com.niit.shoppingcart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Cart;
import com.niit.shopingcart.model.Product;


@Controller
public class CartController {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	
	
	
	@RequestMapping(value="addtocart/{id}")
	public String addproduct(@PathVariable("id") int id,@ModelAttribute("cart") Cart cart,RedirectAttributes attributes,HttpSession session){
		int q=1;
	

		
		double p;
		if(cartDAO.getproduct(id)==null){
			Cart cart2= new Cart(); 
			Product product = productDAO.get(id);
			cart2.setProductid(product.getId());
			cart2.setProductname(product.getName());
			cart2.setPrice(product.getPrice());
			cart2.setQuantity(q);
			cart2.setStatus("C");
			cart2.setUserid((int) session.getAttribute("userId"));
			cartDAO.save(cart2);

		}else{
			Cart cart1 = cartDAO.getproduct(id);
			Product product1 = productDAO.get(id);
			q=cart1.getQuantity();
			cart1.setStatus("C");
			cart1.setUserid((int) session.getAttribute("userId"));
		 p=product1.getPrice();
			q+=1;
			p=q*p;
 cart1.setQuantity(q);
 cart1.setPrice(p);
cartDAO.update(cart1);
		}

		return "redirect:/";
		
		
	}
	@RequestMapping(value="delete/{id}")
	public String delete(@ModelAttribute("cart") Cart cart){
		cartDAO.delete(cart);
		return "redirect:/Cart";
	}
	@RequestMapping(value="Cart")
	public ModelAndView cartpage(@ModelAttribute("cart") Cart cart,HttpSession session){
		ModelAndView mv= new ModelAndView("Cart");
		if(cartDAO.list().isEmpty()){
			mv.addObject("emptycart","Sorry your shopping cart is empty");
		}else{
		mv.addObject("cartList", cartDAO.list());
		mv.addObject("cartprice", cartDAO.CartPrice((Integer) session.getAttribute("userId")));
		}
		mv.addObject("UserClickedCart","true");
		return mv;
	}
	@RequestMapping("placeorder")
	public String placeorder(Model model)
	{
		model.addAttribute("IfPaymentClicked", "true");
		model.addAttribute("HideOthers","true");
		return "Home";
	}

	@RequestMapping("Payment")
	public String payment(HttpSession session) {
		cartDAO.pay((int) session.getAttribute("userId"));
		return "Home";
	}
}