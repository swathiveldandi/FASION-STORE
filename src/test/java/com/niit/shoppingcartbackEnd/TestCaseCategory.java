/*package com.niit.shoppingcartbackEnd;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class TestCaseCategory {
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	AnnotationConfigApplicationContext context;
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		categoryDAO =(CategoryDAO) context.getBean("categoryDAO");
		category= (Category) context.getBean("category");
	}
	
	@Test
	public void categoryListTestCase()
	{
		List<Category> list = categoryDAO.list();
		int rowCount= list.size();
     }
	@Test
	public void categoryAddTestcase()
	{
		category.setId("surfthjg");
		category.setName("njsgd");
		category.setDescription("werfcg");
		@SuppressWarnings("unused")
		boolean flag= categoryDAO.saveOrUpdate(category);
		
	}
	
	@Test
	public void categoryGetTestCase()
	{

		
		System.out.println(category.getDescription());
		System.out.println(category.getName());
		
	}
}

*/