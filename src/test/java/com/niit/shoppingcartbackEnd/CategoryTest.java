/*package com.niit.shoppingcartbackEnd;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;


public class CategoryTest {
	
	
	public static void main(String[] args) {
	      
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		
		CategoryDAO categoryDAO =   (CategoryDAO) context.getBean("categoryDAO");
		Category category =   (Category) context.getBean("category");
		
		category.setId("CN100");
		category.setName("mobile");
		category.setDescription("this is samsung mobile");

		categoryDAO.saveOrUpdate(category);
		categoryDAO.delete("CN400");
		
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