<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
       <%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%ResultSet resultset1 =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>

	.palel-primary
	{
		border-color: #bce8f1;
	}
	.panel-primary>.panel-heading
	{
		background:#bce8f1;
		
	}
	.panel-primary>.panel-body
	{
		background-color: #EDEDED;
	}
</style>
<title>Insert title here</title>
</head>
<style>
input {
	  padding:10px;
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

	.clickable { cursor: pointer; }
</style>
<body>
 <%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/schm7?user=root&password=root");
       Statement statement = connection.createStatement() ;
       resultset =statement.executeQuery("select roomno from cust_reserved_room11 " ) ;

       
		Statement statement1 = connection.createStatement() ;
		resultset1 =statement1.executeQuery("select standard from room ") ;
          
       
       %>
  
<div class="row">
    <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Enter Your Details Here
			</div>
			<div class="panel-body">
				<form name="myform" action="csave" method="post" modelAttribute="res">
				
					
				
					<div class="form-group">
						<label for="name"> Name *</label>
						<input id="name" name="name" class="form-control" type="text" data-validation="required">
						<span id="error_name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="">Email*</label>
						<input id="lastname" name="lastname" class="form-control" type="text" >
						<span id="error_lastname" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="age">Age *</label>
						<input id="age" name="age"  class="form-control" type="number" min="1" >
						<span id="error_age" class="text-danger"></span>
					</div>
					<div class="row">
  <div class="form-group">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
    <td>
        From:
    </td>
    <td>
        <input type="date" id="txtFrom" name="checkin" class="form-control"/>
    </td>
    <td>
        &nbsp;
    </td>
    <td>
        To:
    </td>
    <td>
        <input type="date" id="txtTo" name="checkout"  class="form-control"/>
    </td>
</tr>
</table>
</div>
</div>
			
					
					<div class="form-group">
					   
       		<label for="room">Room Standard</label>
					
		 
		 <p>Room Type:
 <select class="form-control" name="standard">
<%
while(resultset1.next())
{
String fname = resultset1.getString("standard"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>
</select>
</p>
    
					
						<label for="room">Room No</label>
					
		  <select class="form-control" name="roomno">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
        <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%></div>
 					<br><br>
					<div class="form-group">
						<label for="guest_id">Guest Id</label>
						<input type="number" class="form-control" name="guest_id"/>
					</div>	
					<button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>
			
				</form>

			</div>
		</div>
	</div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
rel="Stylesheet"type="text/css"/>

<script type="text/javascript">
$(function () {
    $("#txtFrom").datepicker({
        numberOfMonths: 2,
        onSelect: function (selected) {
            var dt = new Date(selected);
            dt.setDate(dt.getDate() + 1);
            $("#txtTo").datepicker("option", "minDate", dt);
        }
    });
    $("#txtTo").datepicker({
        numberOfMonths: 2,
        onSelect: function (selected) {
            var dt = new Date(selected);
            dt.setDate(dt.getDate() - 1);
            $("#txtFrom").datepicker("option", "maxDate", dt);
        }
    });
});


$(document).ready(function(){
	$flag=1;
	$("#myName").focusout(function(){
		if($(this).val()==''){
    		$(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_name").text("* You have to enter your first name!");
    	}
    	else
    	{
    		$(this).css("border-color", "#2eb82e");
    		$('#submit').attr('disabled',false);
    		$("#error_name").text("");

    	}
   });
    $("#lastname").focusout(function(){
		if($(this).val()==''){
    		$(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_lastname").text("* You have to enter your Last name!");
    	}
    	else
    	{
    		$(this).css("border-color", "#2eb82e");
    		$('#submit').attr('disabled',false);
    		$("#error_lastname").text("");
    	}
   });
  
    $("#gender").focusout(function(){
    	$(this).css("border-color", "#2eb82e");
   
   });
    $("#age").focusout(function(){
		if($(this).val()==''){
    		$(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_age").text("* You have to enter your Age!");
    	}
    	else
    	{
    		$(this).css({"border-color":"#2eb82e"});
    		$('#submit').attr('disabled',false);
    		$("#error_age").text("");

    	}
    	});
   		$( "#submit" ).click(function() {
			if($("#myName" ).val()=='')
			{
    		$("#myName").css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_name").text("* You have to enter your first name!");
    	}
    	if($("#lastname" ).val()=='')
			{
    		$("#lastname").css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_lastname").text("* You have to enter your Last name!");
    	}
			if($("#checkin" ).val()=='')
			{
    		$("#checkin").css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_dob").text("* You have to enter your customer checkin date!");
    	}
			if($("#age" ).val()=='' || $("#age" ).val()<18)
			{
    		$("#age").css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_age").text("* You have to enter your correct Age! above 18");
    	}
    	if($("#phone" ).val()=='')
			{
    		$("#phone").css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_phone").text("* You have to enter your Phone Number!");
    	}
		});}

</script>
</body>
</html>