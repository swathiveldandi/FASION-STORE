package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.User;




public interface UserDAO {


	public List<User> list();

	public User get(int id);

	public boolean saveOrUpdate(User user);
	
	
	public void delete(int id);
	
	public boolean isValidUser(String username, String password);

	public User get(String username);
}
