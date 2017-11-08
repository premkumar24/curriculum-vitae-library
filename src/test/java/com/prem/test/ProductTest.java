package com.prem.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.prem.dao.Productdao;
import com.prem.dto.Product;

public class ProductTest {
	private static AnnotationConfigApplicationContext annotate;

	private static Productdao cd;

	private Product product;

	@BeforeClass
	public static void init() 
	{
		annotate = new AnnotationConfigApplicationContext();
		annotate.scan("com.prem");
		annotate.refresh();

		cd = (Productdao) annotate.getBean("productdao");
	}
	@Test
	public void test() {
		
		product =new Product();
		product.setName("jeans");
		product.setDesc("pant product!");
		product.setRating(3);
		product.setCategory("pant");
		
		assertEquals("success",true,cd.createProduct(product));
		assertEquals("success",1,cd.getProductByCategory("shirts").size());
		
		
	}
	
	

}
