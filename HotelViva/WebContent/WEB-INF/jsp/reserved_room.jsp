<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>
<%
	ResultSet resultset1 = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
input {
	padding: 10px;
	font-family: FontAwesome, "Open Sans", Verdana, sans-serif;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	border-radius: 0 !important;
}

.form-control {
	border-radius: 0 !important;
	font-size: 12x;
}

.clickable {
	cursor: pointer;
}
</style>
</head>
<body>

	<div class="row">
		<div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
			<div class="panel panel-primary">
				<div class="panel-heading">Enter Your Details Here</div>
				<div class="panel-body">
					<form name="myform" action="booked" method="post">
					<%
					try {
						//Class.forName("com.mysql.jdbc.Driver").newInstance();
						Connection connection = DriverManager
								.getConnection("jdbc:mysql://localhost:3306/schm7?user=root&password=root");
						Statement statement = connection.createStatement();
						/*        resultset =statement.executeQuery("select room_type_id from reserved_room where status = 1"); */
						resultset = statement.executeQuery("select roomno from cust_reserved_room where status=true");
						%>
					<table border="0" cellpadding="0" cellspacing="0">
					<div class="form-group">
						<label for="room">Room No</label> <select class="form-control"
							name="room_type_id">
							<%
								while (resultset.next()) {
							%>
							<option><%=resultset.getString(1)%></option>
							<%
								}
							%>
						</select>
						<%
							} catch (Exception e) {
								out.println("wrong entry" + e);
							}
						%>
						</div>
						<button id="submit" type="submit" value="submit"
							class="btn btn-primary center">Submit</button>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>