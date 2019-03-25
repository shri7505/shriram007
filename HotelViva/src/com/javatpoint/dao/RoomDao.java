package com.javatpoint.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.javatpoint.beans.Room;

public class RoomDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Room r) {
		String sql = "insert into cust_reserved_room11 (roomno,standard,price,status) values ('" + r.getRoomno() + "','"
				+ r.getStandard() + "'," + r.getPrice() + "," + r.isStatus() + ")";
		return template.update(sql);
	}

	public Room getRoomById(int roomno){
	    String sql="select * from cust_reserved_room11 where roomno=?";
	    return template.queryForObject(sql, new Object[]{roomno},new BeanPropertyRowMapper<Room>(Room.class));    
	}
	
	public int update(Room r) {
		String sql = "update cust_reserved_room11 set roomno='" + r.getRoomno() + "', standard='" + r.getStandard()
				+ "',price=" + r.getPrice() + ",status=" + r.isStatus() + "  where id=" + r.getRoomno() + "";
		return template.update(sql);
	}

	public int delete(int roomno) {
		String sql = "delete from cust_reserved_room11 where roomno=" + roomno + "";
		return template.update(sql);
	}

	public List<Room> getRoom() {
		return template.query("select * from cust_reserved_room11", new RowMapper<Room>() {
			public Room mapRow(ResultSet rs, int row) throws SQLException {
				Room rm = new Room();
				rm.setRoomno(rs.getInt(1));
				rm.setStandard(rs.getString(2));
				rm.setPrice(rs.getDouble(3));
				rm.setStatus(rs.getBoolean(4));
				return rm;
			}
		});
	}
	
	public List<Room> getBookedRoom() {
		return template.query("select * from cust_reserved_room11 where status = false ", new RowMapper<Room>() {
			public Room mapRow(ResultSet rs, int row) throws SQLException {
				Room rm = new Room();
				rm.setRoomno(rs.getInt(1));
				rm.setStandard(rs.getString(2));
				rm.setPrice(rs.getDouble(3));
				rm.setStatus(rs.getBoolean(4));
				return rm;
			}
		});
	}

	public int roombooked(Room r) {
		String sql = "insert into cust_reserved_room11 (roomno,standard,price,status) values ('" + r.getRoomno() + "','"
				+ r.getStandard() + "'," + r.getPrice() + "," + r.isStatus() + ")";
		return template.update(sql);
	}
}