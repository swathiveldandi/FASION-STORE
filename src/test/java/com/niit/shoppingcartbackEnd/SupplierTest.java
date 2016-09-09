/*package com.niit.shoppingcartbackEnd;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;


public class SupplierTest {
	
	
	public static void main(String[] args) {
	      
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		
		SupplierDAO supplierDAO =   (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier =   (Supplier) context.getBean("supplier");
		
		supplier.setId("SUP002");
		supplier.setName("SUPNAme001");
		supplier.setAddress("Bombay");
		supplierDAO.saveOrUpdate(supplier);
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