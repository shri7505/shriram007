    package com.javatpoint.beans; 
        
    public class Emp {    
    private int id;    
    private String name;    
    private String email;   
    private long phone;
	private String address;
    private String gender;
    private String cid;
    private String details;
    private int age;
	private String checkin ;   
	private String checkout;
	private int roomno;
	private int hour;
	private boolean status;
	
	public int getHour() {
		return hour;
	}
	public void setHour(int hour) {
		this.hour = hour;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getAddress() {
		return address;
	}
	public int getRoomno() {
		return roomno;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
		public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
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
	public void setAge(int age) {
		this.age = age;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}    
	
	
    }