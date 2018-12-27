package com.prem.dao;

import com.prem.dto.Details;



public interface Detailsdao {

	boolean createDetails(Details details);
	boolean updateDetails(Details details);
	boolean deleteDetails(Details details);
	Details getUserByEmail(String email);
}
