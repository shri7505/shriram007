package com.javatpoint.dao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


import com.javatpoint.beans.EmployeeProfile;

public class EmployeeProfileDao {
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	
	public int save(EmployeeProfile ep){  
	    String sql="insert into employee(first_name, last_name, mobile, email, location, password, employeeid, image) values ('"+ep.getFirst_name()+"','"+ep.getLast_name()+"',"+ep.getMobile()+",'"+ep.getEmail()+"','"+ep.getLocation()+"','"+ep.getPassword()+"','"+ep.getEmployeeid()+"','"+ep.getImage()+"')";  
	    return template.update(sql);  
	}  
	
	public boolean authenticateUser(EmployeeProfile userBean){
		boolean userExists = false;
		int rowcount = template.queryForInt("select count(*) from employee " +
				" where email = ? and password = ?",
				userBean.getEmail(),userBean.getPassword());
		if(rowcount==1){
			userExists = true;
		}
		return userExists;
	}
	
}
