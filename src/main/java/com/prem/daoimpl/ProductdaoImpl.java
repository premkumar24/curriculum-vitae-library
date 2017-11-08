package com.prem.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prem.dao.Productdao;
import com.prem.dto.Category;
import com.prem.dto.Product;

@Repository("productdao")
@Transactional

public class ProductdaoImpl implements Productdao {
	@Autowired
	SessionFactory SessionFactory;

	public boolean createProduct(Product product) {
		try {

			SessionFactory.getCurrentSession().persist(product);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	public List<Product> readAll() {
		// TODO Auto-generated method stub

		String hql = "FROM Product";
		javax.persistence.Query query = SessionFactory.getCurrentSession().createQuery(hql);

		return query.getResultList();
	}

	public boolean updateProduct(Product product) {
		try {

			SessionFactory.getCurrentSession().update(product);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	public boolean deleteProduct(Product product) {
		try {

			SessionFactory.getCurrentSession().delete(product);
			SessionFactory.getCurrentSession().flush();
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	public List<Product> getProductByCategory(String categoryname) {
		String hql = "FROM Product where category=:category";
		javax.persistence.Query query = SessionFactory.getCurrentSession().createQuery(hql);
	
		query.setParameter("category",categoryname);

		return query.getResultList();
	}

}