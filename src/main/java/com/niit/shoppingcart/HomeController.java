package com.niit.shoppingcart;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;



@Controller
public class HomeController {
	
	@Autowired
	ProductDAO productDAO;
	
	/*@RequestMapping("/")
	public String homePage()
	{
		return "Home";
	}
	*/
	
    
		@RequestMapping("/Registration")
		public ModelAndView registration()
		{
			ModelAndView mv= new ModelAndView("Registration");
			mv.addObject("userClickedRegistrationHere","true");
			return mv;
			
	    }
		@RequestMapping("/Login")
		public ModelAndView login()
		{
			ModelAndView mv= new ModelAndView("Login");
			mv.addObject("userClickedLoginHere","true");
			return mv;
			
	    }
	    @RequestMapping("/")
	    public String homepage(Model m){
	    	m.addAttribute("product", new Product());
	    	m.addAttribute("productList", productDAO.list());
	    	return "Home";
	    }

}
