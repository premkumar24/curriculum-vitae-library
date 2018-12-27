package com.prem;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import org.h2.command.dml.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.prem.dao.Detailsdao;
import com.prem.dao.Register1dao;

import com.prem.dto.Details;
import com.prem.dto.FileUpload;

import com.prem.dto.Register1;


@org.springframework.stereotype.Controller
public class Controller {

	
	@Autowired
	public Register1dao register1dao;
	
	@Autowired
	public Detailsdao detailsdao;

	
	
	public Register1 register1;

	

	
	
	public Details details;

	@Autowired
	public HttpServletRequest req;

	@RequestMapping(value = "/")
	public ModelAndView index() {
		ModelAndView m = new ModelAndView("index");
		return m;
	}
	@RequestMapping(value = "/cv")
	public ModelAndView cv() {
		ModelAndView m = new ModelAndView("cv");
		return m;
	}

	@ResponseBody
	@RequestMapping(value = "/login")
	public ModelAndView login() {
		ModelAndView m = new ModelAndView("login");
		return m;

	}
	@RequestMapping(value = "/profile")
	public ModelAndView profile() {
		ModelAndView m = new ModelAndView("profile");
		return m;

	}
	@RequestMapping(value = "/settings")
	public ModelAndView settings() {
		ModelAndView m = new ModelAndView("settings");
		return m;

	}
	
	@RequestMapping(value = "/success")
	public ModelAndView success() {
		ModelAndView m = new ModelAndView("success");
		return m;
	}
	@RequestMapping(value = "/succes")
	public ModelAndView succes() {
		ModelAndView m = new ModelAndView("succes");
		return m;
	}
	
	@RequestMapping(value = "/userprofile")
	public ModelAndView userprofile() {
		ModelAndView m = new ModelAndView("userprofile");
		return m;
	}
	@RequestMapping(value = "/candidates")
	public ModelAndView candidates() {
		ModelAndView m = new ModelAndView("candidates");
		return m;
	}
	@RequestMapping(value = "/updateprofile")
	public ModelAndView updateprofile() {
		ModelAndView m = new ModelAndView("updateprofile");
		return m;
	}
	@RequestMapping(value = "/userprofileview")
	public ModelAndView userprofileview(@RequestParam("email") String email) {
		ModelAndView m = new ModelAndView("userprofileview");
		return m;
	}

	// @ResponseBody
	

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("name") String uname, @ModelAttribute("email") String email,
			@ModelAttribute("phoneno") String phone, @ModelAttribute("address") String address,
			@ModelAttribute("password") String password, @ModelAttribute("country") String country) {
		register1 = new Register1();
		register1.setAddress(address);
		register1.setEmail(email);
		register1.setUname(uname);
		register1.setPassword(password);
		register1.setPhone(phone);
		register1.setCountry(country);
		
		register1.setRole("ROLE_USER");
		register1.setEnabled(true);

		boolean verifyRegistration = register1dao.createRegister1(register1);
		if (verifyRegistration) {

			return "register";
		} else {
			return "failed to create user...Sorry dude!";
		}
	}
		//creating the register
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String success(HttpSession session, @RequestParam("img") MultipartFile img,
			@ModelAttribute("fname") String fname,@ModelAttribute("lname") String lname,
			@ModelAttribute("email") String email,@ModelAttribute("dadname") String dadname,
			@ModelAttribute("phone") String phone, @ModelAttribute("dob") String dob,
			@ModelAttribute("age") int age,@ModelAttribute("gender") String gender,
			@ModelAttribute("country") String country,@ModelAttribute("state") String state,
			@ModelAttribute("district") String district,@ModelAttribute("city") String city,
			@ModelAttribute("postalno") int postalno,@ModelAttribute("doorno") String doorno,
			@ModelAttribute("degree") String degree,@ModelAttribute("dept") String dept,
			@ModelAttribute("startyear") int startyear,@ModelAttribute("finishyear") int finishyear,
			@ModelAttribute("cgpa") int cgpa,@ModelAttribute("per12") int per12,
			@ModelAttribute("per10") int per10,@ModelAttribute("motherlang") String motherlang,
			@ModelAttribute("lk") String lk,@ModelAttribute("cname") String cname,
			@ModelAttribute("workedas") String workedas,@ModelAttribute("workfrom") String workfrom,
			@ModelAttribute("workto") String workto,@ModelAttribute("salary") String salary,
			@ModelAttribute("hobby") String hobby,@ModelAttribute("skill") String skill,
			@ModelAttribute("achievement") String achievement,@ModelAttribute("profession") String profession,
			@RequestParam("filename") MultipartFile filename) throws IOException {
		details = new Details();
		details.setAchievement(achievement);
		details.setAge(age);
		details.setCgpa(cgpa);
		details.setCity(city);
		details.setCompanyname(cname);
		details.setCountry(country);
		details.setDadname(dadname);
		details.setDegree(degree);
		details.setDept(dept);
		details.setDistrict(district);
		details.setDob(dob);
		details.setDoorno(doorno);
		details.setEmail(email);
		details.setFinishyear(finishyear);
		details.setFname(fname);
		details.setGender(gender);
		details.setHobby(hobby);
		details.setLanguagesknown(lk);
		details.setLname(lname);
		details.setMotherlang(motherlang);
		details.setPer10(per10);
		details.setPer12(per12);
		details.setPhone(phone);
		details.setPostalnumber(postalno);
		details.setProfession(profession);
		details.setSalary(salary);
		details.setSkill(skill);
		details.setStartyear(startyear);
		details.setState(state);
		details.setWorkedas(workedas);
		details.setWorkfrom(workfrom);
		details.setWorkto(workto);
		
		FileUpload file = new FileUpload();
		file.setMultipartFile(img);
        file.setMultipartFile(filename);
		// storing the file

		// file=image.getMultipartFile();
		File f = new File("F:\\Eclipse_webprojects\\prem2\\src\\main\\webapp\\resources\\images\\"
				+ file.getMultipartFile().getOriginalFilename());

		if (!f.exists()) {
			f.mkdirs();
		}

		// FileCopyUtils.copy(file.getMultipartFile().getBytes(), f);
		try {
			img.transferTo(f);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		details.setImg(file.getMultipartFile().getOriginalFilename());
		details.setFilename(file.getMultipartFile().getOriginalFilename());

		boolean UploadFile = detailsdao.createDetails(details);
		if (UploadFile) {
			return "success";
		} else {
			return "failed to uploaded";
		}
	}
	
	@RequestMapping(value = "/succes", method = RequestMethod.POST)
	public String save(HttpSession session, @RequestParam("img") MultipartFile img,
			@ModelAttribute("fname") String fname,@ModelAttribute("lname") String lname,
			@ModelAttribute("email") String email,@ModelAttribute("dadname") String dadname,
			@ModelAttribute("phone") String phone, @ModelAttribute("dob") String dob,
			@ModelAttribute("age") int age,@ModelAttribute("gender") String gender,
			@ModelAttribute("country") String country,@ModelAttribute("state") String state,
			@ModelAttribute("district") String district,@ModelAttribute("city") String city,
			@ModelAttribute("postalno") int postalno,@ModelAttribute("doorno") String doorno,
			@ModelAttribute("degree") String degree,@ModelAttribute("dept") String dept,
			@ModelAttribute("startyear") int startyear,@ModelAttribute("finishyear") int finishyear,
			@ModelAttribute("cgpa") int cgpa,@ModelAttribute("per12") int per12,
			@ModelAttribute("per10") int per10,@ModelAttribute("motherlang") String motherlang,
			@ModelAttribute("lk") String lk,@ModelAttribute("cname") String cname,
			@ModelAttribute("workedas") String workedas,@ModelAttribute("workfrom") String workfrom,
			@ModelAttribute("workto") String workto,@ModelAttribute("salary") String salary,
			@ModelAttribute("hobby") String hobby,@ModelAttribute("skill") String skill,
			@ModelAttribute("achievement") String achievement,@ModelAttribute("profession") String profession,
			@RequestParam("filename")  MultipartFile filename) throws IOException {
		
		details = detailsdao.getUserByEmail(email);
		details.setAchievement(achievement);
		details.setAge(age);
		details.setCgpa(cgpa);
		details.setCity(city);
		details.setCompanyname(cname);
		details.setCountry(country);
		details.setDadname(dadname);
		details.setDegree(degree);
		details.setDept(dept);
		details.setDistrict(district);
		details.setDob(dob);
		details.setDoorno(doorno);
		details.setEmail(email);
		details.setFinishyear(finishyear);
		details.setFname(fname);
		details.setGender(gender);
		details.setHobby(hobby);
		details.setLanguagesknown(lk);
		details.setLname(lname);
		details.setMotherlang(motherlang);
		details.setPer10(per10);
		details.setPer12(per12);
		details.setPhone(phone);
		details.setPostalnumber(postalno);
		details.setProfession(profession);
		details.setSalary(salary);
		details.setSkill(skill);
		details.setStartyear(startyear);
		details.setState(state);
		details.setWorkedas(workedas);
		details.setWorkfrom(workfrom);
		details.setWorkto(workto);
		
		
		FileUpload file = new FileUpload();
		FileUpload file1 = new FileUpload();
		
		file.setMultipartFile(img);
        file1.setMultipartFile(filename);
		// storing the file

		// file=image.getMultipartFile();
		File f = new File("F:\\Eclipse_webprojects\\prem2\\src\\main\\webapp\\resources\\images\\"
				+ file.getMultipartFile().getOriginalFilename());
		File f1 = new File("F:\\Eclipse_webprojects\\prem2\\src\\main\\webapp\\resources\\images\\"
				+ file1.getMultipartFile().getOriginalFilename());
		if (!f.exists()) {
			f.mkdirs();
		}
		if (!f1.exists()) {
			f1.mkdirs();
		}

		// FileCopyUtils.copy(file.getMultipartFile().getBytes(), f);
		try {
			img.transferTo(f);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		try {
			filename.transferTo(f1);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		details.setImg(file.getMultipartFile().getOriginalFilename());
		details.setFilename(file1.getMultipartFile().getOriginalFilename());
		

		boolean UploadFile = detailsdao.updateDetails(details);
		if (UploadFile) {
			return "success";
		} else {
			return "failed to uploaded";
		}
	}
	
	/*@RequestMapping("/download")
	public class FileDownloadController
	{
	    @RequestMapping("/pdf/{fileName:.+}")
	    public void downloadPDFResource( HttpServletRequest request,
	                                     HttpServletResponse response,
	                                     @PathVariable("fileName") String fileName)
	    {
	        //If user is not authorized - he should be thrown out from here itself
	         
	        //Authorized user will download the file
	        String dataDirectory = request.getServletContext().getRealPath("F:\\Eclipse_webprojects\\prem2\\src\\main\\webapp\\resources\\images\\");
	        Path file = Paths.get(dataDirectory, fileName);
	        if (Files.exists(file))
	        {
	        	        
	            response.setContentType("application/pdf");
	            response.addHeader("Content-Disposition", "attachment; filename="+fileName);
	            try
	            {
	                Files.copy(file, response.getOutputStream());
	                response.getOutputStream().flush();
	            }
	            catch (IOException ex) {
	                ex.printStackTrace();
	            }
	        }
	    }
	}
*/
}