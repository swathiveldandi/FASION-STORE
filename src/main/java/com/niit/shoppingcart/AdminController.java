package com.niit.shoppingcart;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.User;

@Controller
public class AdminController {
	@Autowired 
	UserDAO userDAO;
	@RequestMapping(value ="Admin" )
	public ModelAndView SupplierPage() {
		ModelAndView mv= new ModelAndView("/Admin");
		mv.addObject("UserClickedadmin", "true");
		return mv;
}
//	@SuppressWarnings("unchecked")
//	@RequestMapping(value = "/login_session_attributes")
//	public String login_session_attributes(HttpSession session) {
//		String username = SecurityContextHolder.getContext().getAuthentication().getName();
//		User user = userDAO.get(username);
//		session.setAttribute("userId", user.getUserId());
//		session.setAttribute("name", user.getUsername());
//		session.setAttribute("LoggedIn", "true");
//
//		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
//		.getAuthentication().getAuthorities();
//		String role="ROLE_USER";
//		for (GrantedAuthority authority : authorities) 
//		{
//		  
//		     if (authority.getAuthority().equals(role)) 
//		     {
//		    	 session.setAttribute("UserLoggedIn", "true");
//		    	 return "/Home";
//		     }
//		     else 
//		     {
//		    	 session.setAttribute("Administrator", "true");
//			 return "/Admin";
//		     }
//	}
//		return "/Home";
//	
//	}
//
//

}
