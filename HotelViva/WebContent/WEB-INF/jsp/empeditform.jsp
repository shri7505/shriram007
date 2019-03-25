<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  <script src="js/contactform.js"></script>
<title>Insert title here</title>
</head>
<body>
          <h1>Edit Employee</h1>  
        <div class="container">
       <form:form method="POST" action="/HotelViva/editsave">    
         
          <label for="name">ID:</label>
          <form:hidden path="id"/>
        
     <div class="row">
          <div class="col-md-6 col-md-6">
           <label for="name">name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
       <div class="col-md-6 col-md-6">
       <label for="email">email:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    </div>
       
         <div class="row">
              <div class="col-md-6 col-md-6">
             	  <label for="phone">phone:</label>
                <input type="text" name="phone" class="form-control" id="phone" placeholder="Your phone" data-rule="minlen:4" data-msg="Please enter 10digit" />
                <div class="validation"></div> 
              </div>
              <div class="col-md-6 col-md-6">
             	  <label for="street">street:</label>
                <input type="text" name="street" class="form-control" id="street" placeholder="Your street" />
                </div>
          <div class="col-md-6 col-md-6">
           <label for="city">city:</label>
      <input type="text" class="form-control" id="city" placeholder="Enter city" name="city">
    </div>
       <div class="col-md-6 col-md-6">
       <label for="country">country:</label>
      <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
    </div>
              <div class="col-md-6 col-md-6">
             	  <label for="gender">gender:</label>
                <input type="text" name="gender" class="form-control" id="gender" placeholder="Your gender"  />
                 </div>
          <div class="col-md-6 col-md-6">
           <label for="cid">Customer Id:</label>
      <input type="text" class="form-control" id="cid" placeholder="Enter Customer Id" name="cid">
    </div>
       <div class="col-md-6 col-md-6">
       <label for="details">Details:</label>
      <input type="text" class="form-control" id="gender" placeholder="Enter details" name="details">
    </div>
   <td><button type="submit" class="btn btn-danger">Save</button></td>    
  </div>
       </form:form>  
    </div>
</body>
</html>