package com.prem.test;
import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.prem.dao.Register1dao;
import com.prem.dto.Register1;

public class Register1Test {
	private static AnnotationConfigApplicationContext annotate;
	private static Register1dao cd;
	private Register1 register1;
	@BeforeClass
	public static void init() 
	{
		annotate = new AnnotationConfigApplicationContext();
		annotate.scan("com.prem");
		annotate.refresh();

		cd = (Register1dao) annotate.getBean("register1dao");
	}
	@Test
	public void test() {
		register1=new Register1();
		register1.getUname();
		register1.setEmail("premavir24@gmail.com");
		register1.setAddress("7/253,kumbakonam");
		register1.setPhone("8754961791");
		register1.setPassword("prem@1998");
		assertEquals("success",true,cd.createRegister1(register1));
		
		
	}
}
