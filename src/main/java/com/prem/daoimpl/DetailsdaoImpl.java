package com.prem.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prem.dao.Detailsdao;
import com.prem.dto.Details;

@Repository("detailsdao")
@Transactional
public class DetailsdaoImpl implements Detailsdao{
	@Autowired
	SessionFactory SessionFactory;

	public boolean createDetails(Details details) {
		try {

			SessionFactory.getCurrentSession().persist(details);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	
	}

	public boolean updateDetails(Details details) {
		try {

			SessionFactory.getCurrentSession().update(details);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}
	}

	public boolean deleteDetails(Details details) {
try {
			
			SessionFactory.getCurrentSession().delete(details);
			SessionFactory.getCurrentSession().flush();
			return true;
		
		
		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}
	}

	@Override
	public Details getUserByEmail(String email) {
		
		Details details=new Details();
		String hql="from Details where email=:email";
		javax.persistence.Query query=SessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("email",email);
		details=(Details)query.getSingleResult();
	    return details;
	}
}
