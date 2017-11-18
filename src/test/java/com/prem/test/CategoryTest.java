package com.prem.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.prem.dao.Categorydao;
import com.prem.dto.Category;

public class CategoryTest {

	private static AnnotationConfigApplicationContext annotate;

	private static Categorydao cd;

	private Category category;

	@BeforeClass
	public static void init() 
	{
		annotate = new AnnotationConfigApplicationContext();
		annotate.scan("com.prem");
		annotate.refresh();

		cd = (Categorydao) annotate.getBean("categorydao");
	}
	
	@Test
	public void test() {
		
		/*
		category =new Category();
		category.setName("cloth");
		category.setDesc("cloth product!");
		assertEquals("success",true,cd.createCategory(category));
		
		
		category =new Category();
		category.setName("pant");
		category.setDesc("pant product!");
		assertEquals("success",true,cd.createCategory(category));
		
		
		category =new Category();
		category.setName("shirts");
		category.setDesc(" all shirt products");
		assertEquals("success",true,cd.updateCategory(category));
		*/
		
		category =new Category();
		category=cd.getSingleCategoryUsingId(3);
		category.setDesc(" trouser products");
		category.setName("trouser");
		assertEquals("success",true,cd.updateCategory(category));
		
		
		//assertEquals("success",3,cd.readAll().size());
		
		
	}
}
