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
	//product=cd.getSingleProductUsingId(34);
		product.setPrice("$44.22");
		product.setName("Tshirt");
		product.setDesc("shirt product!");
		product.setRating(4);
		product.setCategory("shirts");
		product.setImage("https://images-eu.ssl-images-amazon.com/images/I/41zgXH0CdNL._AC_UL260_SR200,260_FMwebp_QL70_.jpg");
		
		assertEquals("success",true,cd.createProduct(product));
		//assertEquals("success",1,cd.getProductByCategory("shirts").size());
		
		
	}
	
	

}
