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

	/*@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "id") int id,
			@RequestParam(value = "password") String password,HttpSession session) {
		ModelAndView mv = new ModelAndView("Home");
		@SuppressWarnings("unused")
		String msg;
		userDetails = userDetailsDAO.isValidUser(id, password);
		if (userDetails == null) {
			msg = "Invalid User";
		}
		if (userDetails.getRole().equals("ROLE_ADMIN")) {
			mv = new ModelAndView("Admin");
		} else {
			session.setAttribute("welcomemsg", userDetails.getName());
			session.setAttribute("userId", userDetails.getId());
		}
		return mv;
	}*/
}