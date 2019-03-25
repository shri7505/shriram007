package example;

import java.io.DataInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DisplayByID {

	public static void main(String[] args) {
		try {
			String s1=null;
			String s2=null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();

			// serverhost = localhost, port=3306, username=root, password=123
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schm7", "root", "root");

			Statement smt = cn.createStatement();

			DataInputStream KB = new DataInputStream(System.in);

			// input a particular employee id of which we want to display record
			System.out.print("Enter Employee ID:");
			String eid = KB.readLine();

			// query to display a particular record from table employee where empid(employee
			// id) is equals to eid
			String q = "Select * from customer_new11 where id='" + eid + "'";

			// to execute query
			ResultSet rs = smt.executeQuery(q);

			// to print the resultset on console
			if (rs.next()) {
				System.out.println(rs.getString(10) + "," + rs.getString(11));
				s1=rs.getString(10);
				s2=rs.getString(11);
			}
			System.out.println("Check-In= "+s1 + "Check-In= " + s2);
			cn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}