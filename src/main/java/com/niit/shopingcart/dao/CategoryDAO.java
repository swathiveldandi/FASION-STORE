package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Category;

public interface CategoryDAO {


	public List<Category> list();

	public Category get(int id);

	public boolean saveOrUpdate(Category category);

	public boolean delete(Category category);


}
