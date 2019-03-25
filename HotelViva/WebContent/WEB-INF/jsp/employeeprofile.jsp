<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Insert title here</title>
<head>
  <title>Employee profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>User Profile</h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		
    	<div class="col-sm-12">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
              </ul> 
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form"  name="myform" action="empsave" method="post" onsubmit="return validateemail();">
                     <div class="col-sm-3"><!--left col-->
                    <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" name ="image" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file"  class="text-center center-block file-upload">
      </div></hr><br>
	  </div><!--/col-3-->
					 <div class="form-group">
                          <div class="col-xs-6">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control" name="first_name" onkeyup="validatefirstname(this);" id="first_name" placeholder="first name" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                            <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" onkeyup="validatelastname(this);" id="last_name" placeholder="last name" title="enter your last name if any.">
                          </div>
                      </div>
          
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="enter mobile number"  onkeyup="validatemobile(this);" title="enter your mobile number if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="text" class="form-control" id="location" name="location" placeholder="somewhere" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="employeeid"><h4>Employee Id Card</h4></label>
                              <input type="employeeid" class="form-control" name="employeeid" id="employeeid" placeholder="employeeid" title="enter your Aadhar/pan/voter Id card.">
                          </div>
                      
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                           <br><br><br><br>
                            </div>
                      </div>
              	</form>
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
      <script type="text/javascript"> 
	  
	  $(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
	  
	  function validatemobile(mobile) 
	  {
	      var maintainplus = '';
	      var numval = mobile.value
	      if ( numval.charAt(0)=='+' )
	      {
	          var maintainplus = '';
	      }
	      curphonevar = numval.replace(/[\\A-Za-z!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
	      mobile.value = maintainplus + curphonevar;
	      var maintainplus = '';
	      mobile.focus;
	  }

	  function validatefirstname(first_name) 
	  {
	      var maintainplus = '';
	      var numval = first_name.value
	      if ( numval.charAt(0)=='+' )
	      {
	          var maintainplus = '';
	      }
	      curphonevar = numval.replace(/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
	      first_name.value = maintainplus + curphonevar;
	      var maintainplus = '';
	      first_name.focus;
	  }
	  function validatelastname(last_name) 
	  {
	      var maintainplus = '';
	      var numval = last_name.value
	      if ( numval.charAt(0)=='+' )
	      {
	          var maintainplus = '';
	      }
	      curphonevar = numval.replace(/[\\0-9!"()£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
	      last_name.value = maintainplus + curphonevar;
	      var maintainplus = '';
	      last_name.focus;
	  }
	  
	  function validateemail()  
	  {  
	  	var ph=document.myform.mobile.value; 
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

	  </script>                                               
</body>
</html>