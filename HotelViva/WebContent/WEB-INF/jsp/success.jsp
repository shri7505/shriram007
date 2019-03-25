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
<%
	PreparedStatement pst = null;
%>

<!DOCTYPE html>
<html>
<head>

<title>Customer CheckIn</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="js/contactform.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			//Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/schm7?user=root&password=root");
			Statement statement = conn.createStatement();
			resultset = statement.executeQuery("select roomno from cust_reserved_room11 where status=true");
	%>
	<div class="container">

		<h3>Centered Pills</h3>
		<ul class="nav nav-pills nav-justified">
			<li class="active"><a href="#success">customer form</a></li>
			<li><a href="#">View Customer</a></li>
			<li><a href="#">Rooms</a></li>
			<li><a href="#">Employee</a></li>
		</ul>
		<div class="tab-content">
			<div id="#viewemp" class="tab-pane fade in active">
				<h3>HOME</h3>
				<div class="container">
					<h2>Inline form</h2>
					<p>Make the viewport larger than 768px wide to see that all of
						the form elements are inline, left aligned, and the labels are
						alongside.</p>
					<form name="myform" action="bookAndUpdate" method="post"
						onsubmit="return validateemail();">
						<div class="row">
							<div class="col-md-6 col-md-6">
								<label for="name">name:</label> <input type="text"
									class="form-control" onkeyup="validatename(this);" id="name"
									placeholder="Enter name" name="name">
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="email">email:</label> <input type="text"
									class="form-control" id="email" placeholder="Enter email"
									name="email">
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 col-md-6">
								<label for="phone">phone:</label> <input type="number"
									name="phone" onkeyup="validatephone(this);"
									class="form-control" id="phone" placeholder="Your phone"
									data-rule="minlen:4" data-msg="Please enter 10digit" />
								<div class="validation"></div>
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="address">Address:</label> <input type="text"
									name="address" class="form-control" id="address"
									placeholder="Your address" />
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="gender">gender:</label> <input type="text"
									name="gender" onkeyup="validategender(this);"
									class="form-control" id="gender" placeholder="Your gender" />
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="cid">Customer Id:</label> <input type="text"
									class="form-control" id="cid" placeholder="Enter Customer Id"
									name="cid">
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="details">Details:</label> <input type="text"
									class="form-control" id="details" placeholder="Enter details"
									name="details">
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="age">age:</label> <input type="number"
									class="form-control" id="age" placeholder="Enter age"
									name="age">
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="checkin">Checkin:</label> <input type="date"
									class="form-control" id="checkin" name="checkin">
							</div>
							
							<div class="col-md-6 col-md-6">
								<label for="checkout">Checkout:</label> <input type="date"
									class="form-control" id="checkout" name="checkout">

								<div class="col-md-6 col-md-6">
									<label for="room">Room No</label> <select class="form-control"
										name="roomno">
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
							</div>
							<div class="col-md-6 col-md-6">

								<br>
								<button type="submit" class="btn btn-success" value="Save">Submit</button>
							</div>
							<br>
						</div>
					</form>
				</div>
				<div></div>
			</div>
		</div>
		<a href="room">room</a>
	</div>
	<a href="employeeprofile">Employee Profile Page</a>
	<a href="custroomdata1">customer room booking</a>
	</div>
	<div id="menu2" class="tab-pane fade">
		<h3>Menu 2</h3>
		<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
			accusantium doloremque laudantium, totam rem aperiam.</p>
	</div>
	<div id="menu3" class="tab-pane fade">
		<h3>Menu 3</h3>
		<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto
			beatae vitae dicta sunt explicabo.</p>
	</div>
	<br>
	<br>
	<br>
	<a href="empform">Add Employee</a>
	<a href="viewemp">View Employees</a>

	<script>
		$(document).ready(function() {
			$(".nav-tabs a").click(function() {
				$(this).tab('show');
			});
		});

		function validateemail() {
			var ph = document.myform.phone.value;
			var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;

			var x = document.myform.email.value;
			var atposition = x.indexOf("@");
			var dotposition = x.lastIndexOf(".");
			if (atposition < 1
					|| dotposition<atposition+2 || dotposition+1>x.length) {
				alert("Please enter a valid e-mail address");
				return false;
			} else if (ph == "") {
				alert("Enter numeric value")
				return false;
			}

			else if (ph.length > 10 || ph.length < 10) {
				alert("enter 10 digit");
				return false;
			}
		}

		function validatephone(phone) {
			var maintainplus = '';
			var numval = phone.value
			if (numval.charAt(0) == '+') {
				var maintainplus = '';
			}
			curphonevar = numval.replace(
					/[\\A-Za-z!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
			phone.value = maintainplus + curphonevar;
			var maintainplus = '';
			phone.focus;
		}

		function validatename(name) {
			var maintainplus = '';
			var numval = name.value
			if (numval.charAt(0) == '+') {
				var maintainplus = '';
			}
			curphonevar = numval.replace(
					/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
			name.value = maintainplus + curphonevar;
			var maintainplus = '';
			name.focus;
		}

		function validatecity(city) {
			var maintainplus = '';
			var numval = city.value
			if (numval.charAt(0) == '+') {
				var maintainplus = '';
			}
			curphonevar = numval.replace(
					/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
			city.value = maintainplus + curphonevar;
			var maintainplus = '';
			city.focus;
		}

		function validatecountry(country) {
			var maintainplus = '';
			var numval = country.value
			if (numval.charAt(0) == '+') {
				var maintainplus = '';
			}
			curphonevar = numval.replace(
					/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
			country.value = maintainplus + curphonevar;
			var maintainplus = '';
			country.focus;
		}

		function validategender(gender) {
			var maintainplus = '';
			var numval = gender.value
			if (numval.charAt(0) == '+') {
				var maintainplus = '';
			}
			curphonevar = numval.replace(
					/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
			gender.value = maintainplus + curphonevar;
			var maintainplus = '';
			gender.focus;
		}
	</script>



</body>
</html>