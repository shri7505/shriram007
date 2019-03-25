<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Room Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src="js/contactform.js"></script>

<style type="text/css">
<!--
.style1 {
	font-size: 16px
}

.style2 {
	color: #FF0000
}

body {
	background-color: #FFFFAE;
}

body, td, th {
	font-size: 16px;
}

title {
	display: none;
}

body {
	margin: 0;
	padding: 0;
}

html body nav.navbar.navbar-default div#bs-example-navbar-collapse-1.collapse.navbar-collapse div.col-sm-3.col-md-3.pull-right form.navbar-form div.input-group div.input-group-btn button.btn.btn-default
	{
	padding: 9px 12px;
}
-->
</style>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/sb-admin-2.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="jquery/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>

	<div class="container">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#yesterday" data-toggle="tab">
					Room Details </a></li>
		</ul>
		<div id="yesterday" class="tab-content">

			<div class="panel  panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">Rooms details</h3>
				</div>
				<div class="panel-body">
					<table class="table table-striped">

						<thead>
							<tr>
								<th>Room No</th>
								<th>Standard</th>
								<th>Price</th>
							</tr>
						</thead>

						<c:forEach items="${list}" var="room">
							<tbody>
								<tr>
									<td>${room.roomno}</td>
									<td>${room.standard}</td>
									<td>${room.price}</td>

									<td><a href="editemp?roomno=${room.roomno}"><button
												type="button" class="btn btn-warning">Edit</button></a></td>
									<td><a href="deleteemp?roomno=${room.roomno}"><button
												type="button" class="btn btn-danger">Delete</button></a></td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
				</div></div>
			</div>
</body>
</html>

