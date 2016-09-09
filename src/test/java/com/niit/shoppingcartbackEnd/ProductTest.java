/*package com.niit.shoppingcartbackEnd;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Product;


public class ProductTest {
	
	
	public static void main(String[] args) {
	      
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		
		ProductDAO ProductDAO =   (ProductDAO) context.getBean("productDAO");
		Product product =   (Product) context.getBean("product");
		
		product.setId("CN100");
		product.setCategoryID("CG005");
		product.setName("CGMobile001");
		product.setDescription("this is product Mobile001 description");
		product.setPrice(250);
		product.setSupplierID("SUP001");
		ProductDAO.save(product);
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