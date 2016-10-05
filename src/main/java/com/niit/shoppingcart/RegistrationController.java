package com.niit.shoppingcart;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.User;

@Controller
public class RegistrationController {
	
//	@Autowired
//	UserDAO userDAO;
//		
//	
//	@RequestMapping(value="adduser")
//	public String addsupplier(@ModelAttribute("user") User  user, Model m,RedirectAttributes attributes)
//	{
//        user.setRole("ROLE_USER");
//        user.setEnabled(true);
//        if(userDAO.saveOrUpdate(user)==true){
//        	attributes.addFlashAttribute("registered", "You Have Successfully Registered with us Thank You...");
//        }
//        else{
//        	attributes.addFlashAttribute("registered","Registration failed Please try again");
//        }
//		return "redirect:/Registration";
//	}
//	@RequestMapping(value="Registration")
//	public ModelAndView user(@ModelAttribute("user") User user){
//		ModelAndView mv=new ModelAndView("/Registration");
//		mv.addObject("UserClickeduser","true");
//		return mv;
//	}
//	}
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping(value = "Login")
	public String DisplayLogin(Model mv) {
		mv.addAttribute("user", new User());
		mv.addAttribute("UserClickedlogin", "true");
		mv.addAttribute("HideOthers","true");
		return "Home";
	}
	
	@RequestMapping(value = "Registration")
	public String DisplayRegister(Model mv) {
		mv.addAttribute("user", new User());
		/*mv.addAttribute("categoryList", categoryDAO.list());
		mv.addAttribute("productList", productDAO.list());*/
		mv.addAttribute("UserClickeduser", "true");
		mv.addAttribute("HideOthers","true");
		return "Home";
	}

	@RequestMapping(value = "adduser", method = RequestMethod.POST)
	public String UserRegister(@ModelAttribute("user") User user, ModelAndView mv) {
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		userDAO.saveOrUpdate(user);
		mv.addObject("message", "Registration Success");
		return "redirect:/";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/login_session_attributes")
	public String login_session_attributes(HttpSession session) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		User user = userDAO.get(username);
		session.setAttribute("userId", user.getUserId());
		session.setAttribute("name", user.getUsername());
		session.setAttribute("LoggedIn", "true");

		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
		.getAuthentication().getAuthorities();
		String role="ROLE_USER";
		for (GrantedAuthority authority : authorities) 
		{
		  
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 return "redirect:/";
		     
		     }
		     else 
		     {
		    	 session.setAttribute("Administrator", "true");
			return "/Admin";
		     }
		}
		return "Home";

}
	
//	@RequestMapping(value="pay")
//	public String pay(HttpSession session)
//	{
//		cartDAO.pay(((int)session.getAttribute("userId")));
//		session.setAttribute("cartsize",cartDAO.cartsize((int)session.getAttribute("userId")));
//		return "Home";
//	}

}
