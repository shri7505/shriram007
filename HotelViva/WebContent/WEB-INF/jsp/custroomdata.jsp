<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
      <%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%> 
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
       resultset =statement.executeQuery("select roomno from room ") ;
   %>
<div class="row">
    <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
		<div class="panel panel-primary">
			<div class="panel-heading">Enter Your Details Here
			</div>
			<div class="panel-body">
				<form name="myform">
					<div class="form-group">
						<label for="fname">First Name *</label>
						<input id="mfname" name="fname" class="form-control" type="text" data-validation="required">
						<span id="error_name" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="lastname">Last Name *</label>
						<input id="lastname" name="lastname" class="form-control" type="text" data-validation="email">
						<span id="error_lastname" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="age">Age *</label>
						<input id="age" name="age"  class="form-control" type="number" min="1" >
						<span id="error_age" class="text-danger"></span>
					</div>
					<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="dp1">Check in:</label>
            <input type="date" class="form-control" value="" id="dp1" />
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label for="dp2">Check out:</label>
            <input type="date" class="form-control" value="" id="dp2" />
        </div>
    </div>
</div>
					<div class="form-group">
						<label for="gender">Gender</label>
						<select name="gender" id="gender" class="form-control">
							<option selected>Male</option>
							<option>Female</option>
							<option>Other</option>
						</select>
						<span id="error_gender" class="text-danger"></span>
					</div>
					
					<div class="form-group">
					
						<label for="roomno">Room No</label>
					
		  <select class="form-control">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
        <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
						<span id="error_gender" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="phone">Phone Number *</label>
						<input type="text" id="phone" name="phone" class="form-control" >
						<span id="error_phone" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="disc">Discription</label>
						<textarea class="form-control" rows="3"></textarea>
					</div>
					
					<button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>
			
				</form>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

var checkin = $('#dpd1').datepicker({
    onRender: function(date) {
        return date.valueOf() < now.valueOf() ? 'disabled' : '';
    }
}).on('changeDate', function(ev) {
    if (ev.date.valueOf() > checkout.date.valueOf()) {
        var newDate = new Date(ev.date)
        newDate.setDate(newDate.getDate() + 1);
        checkout.setValue(newDate);
    }
    checkin.hide();
    $('#dpd2')[0].focus();
}).data('datepicker');
var checkout = $('#dpd2').datepicker({
    onRender: function(date) {
        return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
    }
}).on('changeDate', function() {
    checkout.hide();
}).data('datepicker');


</script>

<script type="text/javascript">
var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

var checkin = $('#dpd1').datepicker({
    onRender: function(date) {
        return date.valueOf() < now.valueOf() ? 'disabled' : '';
    }
}).on('changeDate', function(ev) {
    if (ev.date.valueOf() > checkout.date.valueOf()) {
        var newDate = new Date(ev.date)
        newDate.setDate(newDate.getDate() + 1);
        checkout.setValue(newDate);
    }
    checkin.hide();
    $('#dpd2')[0].focus();
}).data('datepicker');
var checkout = $('#dpd2').datepicker({
    onRender: function(date) {
        return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
    }
}).on('changeDate', function() {
    checkout.hide();
}).data('datepicker');


</script>
<script type="text/javascript">
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
    $("#dob").focusout(function(){
		if($(this).val()==''){
    		$(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_dob").text("* You have to enter your Date of Birth!");
    	}
    	else
    	{
    		$(this).css("border-color", "#2eb82e");
    		$('#submit').attr('disabled',false);
    		$("#error_dob").text("");
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
    $("#phone").focusout(function(){
        $pho =$("#phone").val();
		if($(this).val()==''){
    		$(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_phone").text("* You have to enter your Phone Number!");
    	}
    	else if ($pho.length!=10)
    	{   
                $(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_phone").text("* Lenght of Phone Number Should Be Ten");
    	}
    	else if(!$.isNumeric($pho))
    	{
    	        $(this).css("border-color", "#FF0000");
    			$('#submit').attr('disabled',true);
    			$("#error_phone").text("* Phone Number Should Be Numeric");  
    	}
    	else{
    		$(this).css({"border-color":"#2eb82e"});
    		$('#submit').attr('disabled',false);
    		$("#error_phone").text("");
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
		});




var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

var checkin = $('#dp1').datepicker({

  beforeShowDay: function(date) {
    return date.valueOf() >= now.valueOf();
  },
  autoclose: true

}).on('changeDate', function(ev) {
  if (ev.date.valueOf() > checkout.datepicker("getDate").valueOf() || !checkout.datepicker("getDate").valueOf()) {

    var newDate = new Date(ev.date);
    newDate.setDate(newDate.getDate() + 1);
    checkout.datepicker("update", newDate);

  }
  $('#dp2')[0].focus();
});


var checkout = $('#dp2').datepicker({
  beforeShowDay: function(date) {
    if (!checkin.datepicker("getDate").valueOf()) {
      return date.valueOf() >= new Date().valueOf();
    } else {
      return date.valueOf() > checkin.datepicker("getDate").valueOf();
    }
  },
  autoclose: true

}).on('changeDate', function(ev) {});

});



</script>
</body>
</html>