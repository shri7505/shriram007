package com.javatpoint.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.javatpoint.beans.Emp;

public class EmpDao {

	JdbcTemplate template;
	DataSource dataSource;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Emp p) {
		String sql = "insert into customer_new11(name,email,phone,address,gender,cid,details,age,checkin,checkout,roomno) values ('"
				+ p.getName() + "','" + p.getEmail() + "'," + p.getPhone() + ",'" + p.getAddress() + "','"
				+ p.getGender() + "','" + p.getCid() + "','" + p.getDetails() + "'," + p.getAge() + ",'"
				+ p.getCheckin() + "','" + p.getCheckout() + "'," + p.getRoomno() + ")";
		return template.update(sql);
	}

	public int update(Emp p) {
		String sql = "update customer_new11 set name='" + p.getName() + "', email='" + p.getEmail() + "',phone="
				+ p.getPhone() + ",address='" + p.getAddress() + "',gender='" + p.getGender() + "',cid='" + p.getCid()
				+ "',details='" + p.getDetails() + "',age='" + p.getAge() + "',checkin='" + p.getCheckin()
				+ "',checkout='" + p.getCheckout() + "',roomno='" + p.getRoomno() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from customer_new11 where id=" + id + "";
		return template.update(sql);
	}

	public int getDays() {
		int d=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schm7", "root", "root");
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("select timestampdiff(DAY, checkin, now()) from customer_new11 where id = 8;");
			
			while (rs.next()) {
				d=rs.getInt(1);
				System.out.println(d);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return d;
	}

	public Emp getEmpById(int id) {
		String sql = "select * from customer_new11 where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
	}

	public List<Emp> getEmployees() {
		return template.query("select * from customer_new11", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {
				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setPhone(rs.getLong(4));
				e.setAddress(rs.getString(5));
				e.setGender(rs.getString(6));
				e.setCid(rs.getString(7));
				e.setDetails(rs.getString(8));
				e.setAge(rs.getInt(9));
				e.setCheckin(rs.getString(10));
				e.setCheckout(rs.getString(11));
				e.setRoomno(rs.getInt(12));
				return e;
			}
		});
	}
}