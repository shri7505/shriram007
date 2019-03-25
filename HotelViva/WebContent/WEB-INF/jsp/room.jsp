<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="js/contactform.js"></script>
 <title>Insert title here</title>
</head>
<body>

<div class="container">
  <h3>Centered Pills</h3>
  <ul class="nav nav-pills nav-justified">
    <li><a href="#success">customer form</a></li>
    <li><a href="#">View Customer</a></li>
    <li  class="active"><a href="#room">Rooms</a></li>
    <li><a href="#">Employee</a></li>
  </ul><div class="tab-content">
    <div id="#viewemp" class="tab-pane fade in active">
      
     <div class="container">
  <h2><p>Rooms Information</p></h2>
  
     <form  name="myform"  action="rsave"  method="post" onsubmit="return validateemail();">
     <div class="row">
          <div class="col-md-6 col-md-6">
           <label for="roomno">RoomNo:</label>
      <input type="text" class="form-control" onkeyup="validateroom(this);" id="roomno" placeholder="Enter room no" name="roomno">
    </div>
       <div class="col-md-6 col-md-6">
       <label for="standard">Standard:</label>
      <input type="text" class="form-control" id="standard" onkeyup="validatestandard(this);" placeholder="Enter Standard" name="Standard">
    </div>
    </div>
       <div class="col-md-6 col-md-6">
       <label for="price">Price:</label>
      <input type="text" class="form-control" onkeyup="validateprice(this);" id="price" placeholder="Enter price" name="price">
    </div>
    </div>
      <input type="hidden" class="form-control"  id="status" name="status" value="true">
  
              <div class="col-md-6 col-md-6">
              <br>
              <button type="submit" class="btn btn-success" value="Save">Submit</button>              
           </div>
	</div>
	</form>
 </div>
</div>
   
    
    
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
<br><br><br><br><br><br><br><br><br><br><br><br>
    <a href="empform">Add Employee</a>  
    <a href="viewemp">View Employees</a>  
 -->

<script>
$(document).ready(function(){
  $(".nav-tabs a").click(function(){
    $(this).tab('show');
  });
});
 
function validateemail()  
{  
	var ph=document.myform.phone.value; 
	var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
	
	
var x=document.myform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+1>x.length)
{  
  alert("Please enter a valid e-mail address");  
  return false;  
  }  
else if(ph=="")
{
   alert("Enter numeric value")
   return false; 
}

else if (ph.length>10 || ph.length<10 )
{
     alert("enter 10 digit");
     return false;
}
}


function validateroom(roomno) 
{
    var maintainplus = '';
    var numval = roomno.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    roomno.value = maintainplus + curphonevar;
    var maintainplus = '';
    roomno.focus;
}

function validateprice(price) 
{
    var maintainplus = '';
    var numval = price.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    price.value = maintainplus + curphonevar;
    var maintainplus = '';
    price.focus;
}


function validatestandard(standard) 
{
    var maintainplus = '';
    var numval = standard.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\0-9!"()£$%^&,*+_={};:'@#~,.Š/<>?|`¬\]\[]/g,'');
    standard.value = maintainplus + curphonevar;
    var maintainplus = '';
    standard.focus;
}


// 
</script>
					
					
	
</body>
</html>