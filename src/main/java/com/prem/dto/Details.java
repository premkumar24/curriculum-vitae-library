package com.prem.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Details {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String fname;
	private String lname;
	private String dadname;
	private String  img;
	private String email;
	private String phone;
	private String dob;
	private int age;
	private String gender;
	private String country;
	private String state;
	private String district;
	private String city;
	private String doorno;
	private int postalnumber;
	private String degree;
	private String dept;
	private int startyear;
	private int finishyear;
	private int cgpa;
	private int per12;
	private int per10;
	private String motherlang;
	private String languagesknown;
	private String companyname;
	private String workedas;
	private String workfrom;
	private String workto;
	private String salary;
	private String hobby;
	private String skill;
	private String profession;
	private String achievement;
	private String filename;
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDadname() {
		return dadname;
	}
	public void setDadname(String dadname) {
		this.dadname = dadname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDoorno() {
		return doorno;
	}
	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}
	public int getPostalnumber() {
		return postalnumber;
	}
	public void setPostalnumber(int postalnumber) {
		this.postalnumber = postalnumber;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getStartyear() {
		return startyear;
	}
	public void setStartyear(int startyear) {
		this.startyear = startyear;
	}
	public int getFinishyear() {
		return finishyear;
	}
	public void setFinishyear(int finishyear) {
		this.finishyear = finishyear;
	}
	public int getCgpa() {
		return cgpa;
	}
	public void setCgpa(int cgpa) {
		this.cgpa = cgpa;
	}
	public int getPer12() {
		return per12;
	}
	public void setPer12(int per12) {
		this.per12 = per12;
	}
	public int getPer10() {
		return per10;
	}
	public void setPer10(int per10) {
		this.per10 = per10;
	}
	public String getMotherlang() {
		return motherlang;
	}
	public void setMotherlang(String motherlang) {
		this.motherlang = motherlang;
	}
	public String getLanguagesknown() {
		return languagesknown;
	}
	public void setLanguagesknown(String languagesknown) {
		this.languagesknown = languagesknown;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getWorkedas() {
		return workedas;
	}
	public void setWorkedas(String workedas) {
		this.workedas = workedas;
	}
	public String getWorkfrom() {
		return workfrom;
	}
	public void setWorkfrom(String workfrom) {
		this.workfrom = workfrom;
	}
	public String getWorkto() {
		return workto;
	}
	public void setWorkto(String workto) {
		this.workto = workto;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	
	public String getAchievement() {
		return achievement;
	}
	public void setAchievement(String achievement) {
		this.achievement = achievement;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
