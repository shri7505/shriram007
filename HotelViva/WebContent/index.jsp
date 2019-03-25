<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Login here</title>
</head>
</head>
	<form action="doLogin" method="post" onsubmit="return fun()"
		modelAttribute="userBean">
		<div class="container">
			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Sign In</div>
						<div
							style="float: right; font-size: 80%; position: relative; top: -10px">
							<a href="#">Forgot password?</a>
						</div>
					</div>

					<div style="padding-top: 30px" class="panel-body">

						<div style="display: none" id="login-alert"
							class="alert alert-danger col-sm-12"></div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="username"
								type="email" class="form-control" name="email"
								placeholder="username">
						</div>

						<div style="margin-bottom: 25px" class="input-group">

							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="password"
								type="password" class="form-control" name="password"
								placeholder="password">

						<div class="form-group"></div>
						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<label class="checkbox-inline"></label> <label
									class="checkbox-inline"></label> <label class="checkbox-inline"></label>
								<label class="checkbox-inline"></label> <label
									class="checkbox-inline"></label> <input type="submit"
									value="Login" id="login" class="btn btn-success"> <label
									class="checkbox-inline"></label> <input type="submit"
									value="Back" onclick="onclick1()" id="login"
									class="btn btn-warning"><a href="empPdfExport" class="btn btn-success">Emp PDF</a><br>
								<br>
								<div id="error"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- orignal code Sample login Example (try with username as "admin" and password as "admin" without quart ) <br> <br>

<form action="LoginController" method="post">

Enter username :<input type="text" name="username"> <br>
Enter password :<input type="password" name="password"><br>
<input type="submit" value="Login">


</form>
 -->
	<script>
		function onclick1() {
			alert("hello");

		}
	</script>
</body>
</html>