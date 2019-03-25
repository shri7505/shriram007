package example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DateDiffExample {
	static int days = 0;
	static int time = 0;
	public static void main(String args[]) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schm7", "root", "root");

			Statement stmt = con.createStatement();

			ResultSet rs = stmt
					.executeQuery("select timestampdiff(DAY, checkin, now()) from customer_new11 where id = 1;");

			while (rs.next()) {
				days = rs.getInt(1);
			}

			ResultSet rs1 = stmt
					.executeQuery("select round(timediff(CURRENT_TIME, '10:00:00'))");
			while (rs1.next()) {
				time = rs1.getInt(1);
				System.out.println("time diff::"+time);
			}
			if (time>=1) {
				days=days+1;
				System.out.println("total days::"+days);
			} else {
				System.out.println("total days::"+days);
			}
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}