package com.prem.test;
import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.prem.dao.Registerdao;
import com.prem.dto.Register;

public class RegisterTest {
	private static AnnotationConfigApplicationContext annotate;
	private static Registerdao cd;
	private Register register;
	@BeforeClass
	public static void init() 
	{
		annotate = new AnnotationConfigApplicationContext();
		annotate.scan("com.prem");
		annotate.refresh();

		cd = (Registerdao) annotate.getBean("registerdao");
	}
	@Test
	public void test() {
		register=new Register();
		register.setName("prem");
		register.setEmail("premavir24@gmail.com");
		register.setAddress("7/253,kumbakonam");
		register.setPhone("8754961791");
		register.setPassword("prem@1998");
		assertEquals("success",true,cd.createRegister(register));
		
		register=new Register();
		register.setName("laxman");
		register.setEmail("laxmanvijay24@gmail.com");
		register.setAddress("1/5263,kumbakonam");
		register.setPhone("8903040410");
		register.setPassword("laxman");
		assertEquals("success",true,cd.createRegister(register));
		
		register=new Register();
		register.setName("karthikaibala");
		register.setEmail("karthik@gmail.com");
		register.setAddress("25/36,chennai");
		register.setPhone("8642973511");
		register.setPassword("bala");
		assertEquals("success",true,cd.createRegister(register));
	}
}
