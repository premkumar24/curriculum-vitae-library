package com.prem.dao;

import java.util.List;

import com.prem.dto.Category;



public interface Categorydao {

	
	boolean createCategory(Category category);
	
	List<Category> readAll();
	Category getSingleCategoryUsingId(int id);
	
	
	
	boolean updateCategory(Category category);
	
	boolean deleteCategory(Category category);
	
}
