package com.javatpoint.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.javatpoint.beans.Reservation;


public class ReservationDao {
JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int csave(Reservation res){  
	    String sql="insert into reservation_c (id,fname,lastname,age,checkin,checkout,guest_id) values ("+res.getId()+",'"+res.getFname()+"','"+res.getLastname()+"',"+res.getAge()+",'"+res.getCheckin()+"','"+res.getCheckout()+"',"+res.getGuest_id()+")";  
		return template.update(sql);  
	}  
	/*public int cressave(Reserved_room resroom,Reservation res ){  
	    String sql="insert into reserved_room (status) values (true)";  
		return template.update(sql);  
	} */
	
}
