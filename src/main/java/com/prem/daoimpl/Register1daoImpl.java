package com.prem.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prem.dao.Register1dao;
import com.prem.dto.Register1;

@Repository("register1dao")
@Transactional
public class Register1daoImpl  implements Register1dao{
	
	@Autowired
	SessionFactory SessionFactory;
	public boolean createRegister1(Register1 register1) {
		try {

			SessionFactory.getCurrentSession().persist(register1);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}

	
	}
	public boolean deleteRegister1(Register1 register1) {
try {
			
			SessionFactory.getCurrentSession().delete(register1);
			SessionFactory.getCurrentSession().flush();
			return true;
		
		
		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}
		
	}
	public boolean updateRegister1(Register1 register1) {
		try {

			SessionFactory.getCurrentSession().update(register1);
			return true;

		} catch (Exception e) {

			System.out.println(e.getMessage());
			return false;
		}
	}

	
}
