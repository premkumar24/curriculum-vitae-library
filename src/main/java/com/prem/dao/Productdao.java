package com.prem.dao;

import java.util.List;

import com.prem.dto.Category;
import com.prem.dto.Product;

public interface Productdao {
	
	boolean createProduct(Product product);
	List<Product> readAll();
	
	List<Product> getProductByCategory(String categoryname);
	
	
	boolean updateProduct(Product product);
	
	boolean deleteProduct(Product product );

}
