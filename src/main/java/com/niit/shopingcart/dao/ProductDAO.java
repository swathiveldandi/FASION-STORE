package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Product;

public interface ProductDAO {


	public List<Product> list();

	public Product get(int id);

	public boolean saveOrUpdate(Product product);

	public boolean delete(Product product);
	
	public List<Product> getproduct(int id);
	
	public List<Product> navproduct(int id);

}
