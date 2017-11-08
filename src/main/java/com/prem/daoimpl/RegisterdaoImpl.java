package com.prem.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prem.dao.Registerdao;
import com.prem.dto.Register;

@Repository("registerdao")
@Transactional
public class RegisterdaoImpl implements Registerdao{
	@Autowired
	SessionFactory SessionFactory;

	public boolean createRegister(Register register) {
		try {

			SessionFactory.getCurrentSession().persist(register);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	
	}

	public List<Register> readAll() {
		String hql = "FROM Register";
		javax.persistence.Query query = SessionFactory.getCurrentSession().createQuery(hql);

		return query.getResultList();

		
		
	}

	public boolean updateRegister(Register register) {
		try {

			SessionFactory.getCurrentSession().update(register);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

		
	
	}

	public boolean deleteRegister(Register register) {
	try {
			
			SessionFactory.getCurrentSession().delete(register);
			SessionFactory.getCurrentSession().flush();
			return true;
		
		
		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}
		
	}

}
