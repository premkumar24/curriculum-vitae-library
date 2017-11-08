package com.prem.daoimpl;

import java.util.List;

import javax.management.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prem.dao.Categorydao;
import com.prem.dto.Category;

@Repository("categorydao")
@Transactional
public class CategorydaoImpl implements Categorydao {

	@Autowired
	SessionFactory SessionFactory;

	// create category in the database
	public boolean createCategory(Category category) {

		try {

			SessionFactory.getCurrentSession().persist(category);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	// return a list of categories in the database
	public List<Category> readAll() {

		String hql = "FROM Category";
		javax.persistence.Query query = SessionFactory.getCurrentSession().createQuery(hql);

		return query.getResultList();

		// return SessionFActory.getCurrentSession().createQuery(hql).getResultList();

	}

	public boolean updateCategory(Category category) {

		try {

			SessionFactory.getCurrentSession().update(category);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	public boolean deleteCategory(Category category) {

		try {
			
			SessionFactory.getCurrentSession().delete(category);
			SessionFactory.getCurrentSession().flush();
			return true;
		
		
		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	}

	public Category getSingleCategoryUsingId(int id) {
		Category category=new Category();
		String hql="FROM Category where id=:id";
		javax.persistence.Query query=SessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("id",id);
		category=(Category) query.getSingleResult();
		return category;
		
	}

}
