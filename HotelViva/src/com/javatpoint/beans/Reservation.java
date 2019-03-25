package com.javatpoint.beans;

import java.sql.Date;

public class Reservation {
	private int id;
	private String fname;
	private String lastname;
	private int age;
	
	private String checkin ;   
	private String checkout;

	private int guest_id;

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLastname() {
		return lastname;
	}

	public int getAge() {
		return age;
	}

	public String getCheckin() {
		return checkin;
	}

	public String getCheckout() {
		return checkout;
	}



	public int getGuest_id() {
		return guest_id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	
	public void setGuest_id(int guest_id) {
		this.guest_id = guest_id;
	}

	
	
}
