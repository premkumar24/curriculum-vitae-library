package com.prem;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.procedure.internal.Util.ResultClassesResolutionContext;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.StringMultipartFileEditor;
import org.springframework.web.servlet.ModelAndView;

import com.prem.dao.Categorydao;
import com.prem.dao.Productdao;
import com.prem.dao.Registerdao;
import com.prem.dto.FileUpload;
import com.prem.dto.Product;
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

	public Product product;
	@Autowired
	public HttpServletRequest req;

	@RequestMapping(value = "/")
	public ModelAndView index() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("categories", categorydao.readAll());
		return m;
	}

	@RequestMapping(value = "/category")
	public ModelAndView product(@RequestParam("menu") String name) {
		ModelAndView m = new ModelAndView("category");
		m.addObject("cname", name);
		m.addObject("products", productdao.getProductByCategory(name));
		return m;
	}

	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("name") String name, @ModelAttribute("email") String email,
			@ModelAttribute("phoneno") String phone, @ModelAttribute("address") String address,
			@ModelAttribute("password") String password) {
		register = new Register();
		register.setAddress(address);
		register.setEmail(email);
		register.setName(name);
		register.setPassword(password);
		register.setPhone(phone);

		boolean verifyRegistration = registerdao.createRegister(register);
		if (verifyRegistration) {

			return "success";
		} else {
			return "failed to create user...Sorry dude!";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/file", method = RequestMethod.POST)
	public String file(HttpSession session, @RequestParam("img") MultipartFile image,
			@ModelAttribute("NAME") String name, @ModelAttribute("RATING") String rating,
			@ModelAttribute("PRICE") String price, @ModelAttribute("CATEGORY") String category,
			@ModelAttribute("DESC") String desc) throws IOException {
		product = new Product();
		product.setCategory(category);
		product.setDesc(desc);
		product.setName(name);

		FileUpload file = new FileUpload();
		file.setMultipartFile(image);

		// storing the file

		// file=image.getMultipartFile();
		File f = new File("F:\\Eclipse_webprojects\\prem\\src\\main\\webapp\\resources\\images"+file.getMultipartFile().getOriginalFilename());

		f.createNewFile();

		FileCopyUtils.copy(file.getMultipartFile().getBytes(), f);

		product.setImage(file.getMultipartFile().getOriginalFilename());
		product.setPrice(price);
		product.setRating(rating);
		boolean UploadFile = productdao.createProduct(product);
		if (UploadFile) {
			return "uploaded";
		} else {
			return "failed to uploaded";
		}
	}

}
