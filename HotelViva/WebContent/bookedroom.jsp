
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import=""%>
       <%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?user=root&password=root");
       Statement statement = connection.createStatement() ;
       resultset =statement.executeQuery("update cust_reserved_room11 set status=true where roomno="+request.getParameter("roomno"));
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }


%> 
${request.getParameter("roomno")}
	<%
		String first_name = request.getParameter("roomno");
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
			Statement st = conn.createStatement();
			int i = st.executeUpdate("update cust_reserved_room11 set status=true where roomno=");
			out.println("Data is successfully inserted!");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	%> --%>
	successfully room booked
</body>
</html>