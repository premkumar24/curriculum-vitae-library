package com.prem;

import org.hibernate.procedure.internal.Util.ResultClassesResolutionContext;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.prem.dao.Categorydao;
import com.prem.dao.Productdao;
import com.prem.dao.Registerdao;
import com.prem.dto.Register;




@org.springframework.stereotype.Controller
public class Controller {
	
	
	@Autowired
	public Categorydao categorydao;
	@Autowired
	public Productdao productdao;
	@Autowired
	public Registerdao registerdao;
	
	public Register register;
		
	
	
	@RequestMapping(value="/")
	public ModelAndView index()
	{
		ModelAndView m=new ModelAndView("index");
		m.addObject("categories",categorydao.readAll());
		return m;
	}
	@RequestMapping(value="/category")
	public ModelAndView product(@RequestParam("menu") String name)
	{
		ModelAndView m=new ModelAndView("category");
		m.addObject("cname", name);
		m.addObject("products",productdao.getProductByCategory(name));
		return m;
	}
	
	@ResponseBody
	@RequestMapping(value="/register")
	public String register(@ModelAttribute("name") String name,@ModelAttribute("email") String email,@ModelAttribute("phoneno") String phone,@ModelAttribute("address") String address,@ModelAttribute("password") String password)
	{	
		 register=new Register();
		register.setAddress(address);
		register.setEmail(email);
		register.setName(name);
		register.setPassword(password);
		register.setPhone(phone);
		
		boolean verifyRegistration=registerdao.createRegister(register);
		if (verifyRegistration) {
		
			return "success";
		} 
		else {
			return "failed to create user...Sorry dude!";
		}
	}
}
