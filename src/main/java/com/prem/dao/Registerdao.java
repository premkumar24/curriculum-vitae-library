package com.prem.dao;

import java.util.List;


import com.prem.dto.Register;

public interface Registerdao {
   boolean createRegister(Register register);
	
	List<Register> readAll();
//	Category getSingleCategoryUsingId(int id);
	
	
	
	boolean updateRegister(Register register);
	
	boolean deleteRegister(Register register);

}
