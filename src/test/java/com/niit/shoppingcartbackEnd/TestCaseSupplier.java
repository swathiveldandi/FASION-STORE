/*package com.niit.shoppingcartbackEnd;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

public class TestCaseSupplier {

	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	Supplier supplier;
	AnnotationConfigApplicationContext context;
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		supplierDAO =(SupplierDAO) context.getBean("supplierDAO");
		supplier= (Supplier) context.getBean("supplier");
	}
	@Test
	public void categoryListTestCase()
	{
		List<Supplier> list = supplierDAO.list();
		int rowCount= list.size();
		
     }
	@Test
	public void categoeyAddTestcase()
	{

		supplier.setId("surfthjg");
		supplier.setName("njsgd");
		supplier.setAddress("werfcg");
		boolean flag= supplierDAO.saveOrUpdate(supplier);
		
	}
	@Test
	public void categoryGetTestCase()
	{

		
		System.out.println(supplier.getAddress());
		System.out.println(supplier.getName());
		
		
	}
}




*/