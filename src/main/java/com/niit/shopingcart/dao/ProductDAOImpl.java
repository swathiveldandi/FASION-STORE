package com.niit.shopingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopingcart.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public boolean saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return false;
	}

	@Transactional
	public boolean delete(Product product) {
	
		
		sessionFactory.getCurrentSession().delete(product);
		return true;
	}

	@Transactional
	public Product get(int id) {
		String hql = "from Product where id= "+"'" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}

	

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Product> getproduct(int id) {
		String hql="from Product where id= "+id;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct = (List<Product>) query.list();
		return listProduct;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Transactional
	public List<Product> navproduct(int id) {
		String hql = "from Product where categoryid= "+id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> catproduct = (List<Product>) query.list();
		return catproduct;
	}
}



