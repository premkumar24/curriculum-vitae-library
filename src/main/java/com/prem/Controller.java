package com.prem;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.stereotype.Controller
public class Controller {
	@RequestMapping(value="/")
	public ModelAndView index()
	{
		ModelAndView m=new ModelAndView("index");
		return m;
	}

}
