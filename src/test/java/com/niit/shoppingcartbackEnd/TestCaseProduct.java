/*package com.niit.shoppingcartbackEnd;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;

public class TestCaseProduct {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	AnnotationConfigApplicationContext context;
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO =(ProductDAO) context.getBean("productDAO");
		product= (Product) context.getBean("product");
	}
	
	@Test
	public void categoryListTestCase()
	{
		List<Product> list = productDAO.list();
		int rowCount= list.size();
     }
	@Test
	public void categoryAddTestcase()
	{
		product.setId("surfthjg");
		product.setName("njsgd");
		product.setDescription("werfcg");
		boolean flag= productDAO.save(product);
		
	}
	
	@Test
	public void categoryGetTestCase()
	{

		
		System.out.println(product.getDescription());
		System.out.println(product.getName());
		
	}
}

*/