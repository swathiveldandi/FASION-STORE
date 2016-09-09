package com.niit.shoppingcart;

import javax.persistence.Column;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.User;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value="id") String id,
			@RequestParam(value="password")String password,HttpSession session)
	{
		ModelAndView mv = new ModelAndView("home");
		String msg;
		user = userDAO.isValidUser(id, password);
		if(user==null) {
		msg = "Invalid user... please try again letter"	;
		} else {
			
		if(user.getRole().equals("ROLE_ADMIN")) {
			mv = new ModelAndView("adminhome");
		}
		session.setAttribute("welcomeMsg", user.getName());
		session.setAttribute("UserId",user.getId());
		}
				
		return mv;
		
}
}