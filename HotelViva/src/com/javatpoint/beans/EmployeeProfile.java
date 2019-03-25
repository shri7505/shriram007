package com.javatpoint.beans;

import org.springframework.web.multipart.MultipartFile;

public class EmployeeProfile {

	private String first_name;
	private String last_name;
	private long mobile;
	private String email;
	private String location;
	private String password;
	private String employeeid;

	private MultipartFile image;

	public String getFirst_name() {
		return first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public long getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	public String getLocation() {
		return location;
	}

	public String getPassword() {
		return password;
	}

	public String getEmployeeid() {
		return employeeid;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmployeeid(String employeeid) {
		this.employeeid = employeeid;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

}
