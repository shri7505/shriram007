package com.javatpoint.beans;

public class Room {
	private int roomno;
	private String standard;
	private double price;
	private boolean status;

	public Room(int roomno, String standard, double price, boolean status) {
		super();
		this.roomno = roomno;
		this.standard = standard;
		this.price = price;
		this.status = status;
	}

	public Room() {
		super();
	}

	public int getRoomno() {
		return roomno;
	}

	public String getStandard() {
		return standard;
	}

	public double getPrice() {
		return price;
	}

	public void setRoomno(int roomno) {
		this.roomno = roomno;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
