package com.niit.shopingcart.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shopingcart.model.Checkout;



@Repository
public interface CheckoutDAO {

	public boolean saveOrUpdate(Checkout checkout);
	public boolean delete(Checkout checkout);
	public List<Checkout>list();
	public Checkout get(int id);
}