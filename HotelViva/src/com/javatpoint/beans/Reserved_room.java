package com.javatpoint.beans;

public class Reserved_room {
	
	private int id;
	private int number_of_rooms;
	private int room_type_id ;
	private int reservation_id;
	private String status;
	public int getId() {
		return id;
	}
	public int getNumber_of_rooms() {
		return number_of_rooms;
	}
	public int getRoom_type_id() {
		return room_type_id;
	}
	public int getReservation_id() {
		return reservation_id;
	}
	public String getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setNumber_of_rooms(int number_of_rooms) {
		this.number_of_rooms = number_of_rooms;
	}
	public void setRoom_type_id(int room_type_id) {
		this.room_type_id = room_type_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
