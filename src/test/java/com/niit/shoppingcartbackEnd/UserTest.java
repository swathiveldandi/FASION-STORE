/*package com.niit.shoppingcartbackEnd;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDAO;
import com.niit.shopingcart.model.User;
public class UserTest {
	public static void main(String[] args) {
	      
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		
		UserDAO userDAO =   (UserDAO) context.getBean("userDAO");
		User user =   (User) context.getBean("user");
		
		user.setId("niit");
		user.setPassword("niit");
		userDAO.saveOrUpdate(user);
		System.out.println("save");
		context.close();
		if(categoryDAO.save(category)==true);
		{
		System.out.println("Category created successfully");
		}
		else
		{
		
		
		
		
	}


}
*/