<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 

 String user=(String)session.getAttribute("user1");
if(user == null){
	response.sendRedirect("loginView.jsp");
}
%>
<% String name = request.getParameter("name"); %>
<% String phone = request.getParameter("phoneno"); %>
<% String email = request.getParameter("email"); %>
<% String company = request.getParameter("company"); %>
<% String designation = request.getParameter("designation"); %>
<% String address = request.getParameter("address"); %>
<% String role_id = request.getParameter("role_id"); %>
<% String role = request.getParameter("role"); %>




<html lang="en">
<head>
  <title>login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
    background-image:url("bgimg.gif");
}
</style>
</head>
<body>
<center><img src="https://images.cooltext.com/4688380.png" width="628" height="130" alt="My Address Book" /></center>
<div class="container">
  <div class = "row">
  <div class="col-sm-6 col-md-4 col-md-offset-4">
  
  <div class = "well">
  <h2><center>UPDATE CONTACT</center></h2>
  <form role="form" action = "updateemployeecontroller" method = "post">
    <div class="form-group">
      <label for="fname">Name:</label>
      <input type="text" class="form-control" id="fname" name = fname value="<%=name %>" required>
    </div>
    <div class="form-group">
      <label for="phoneno">Phone Number:</label>
      <input type="text" class="form-control" id="phoneno" name = phone length = 10 value="<%=phone %>" required>
    </div>
    <div class="form-group">
      <label for="email">Email id:</label>
      <input type="email" class="form-control" id="email" name = email value="<%=email %>" required>
    </div>
    <div class="form-group">
      <label for="company">Company:</label>
      <input type="text" class="form-control" id="company" name = company value="<%=company %>" required>
    </div>
    <div class="form-group">
      <label for="designation">Desination:</label>
      <input type="text" class="form-control" id="designatiom" name = dsignation value="<%=designation %>" required>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" class="form-control" id="address" name = address value="<%=address %>" required>
    </div>
    <div class="form-group">
      <label for="role">Role:</label>
      <input type="text" class="form-control" id="role" name = role value="<%=role %>" required readonly>
    </div>
    <div class="form-group">
      <label for="address">Role_Id:</label>
      <input type="text" class="form-control" id="role_id" name = role_id value="<%=role_id %>" required readonly>
    </div>
    
    <button type="submit" class="btn btn-danger">UPDATE</button>
   </form>
   </div>   
  </div>
</div>
</div>

</body>
</html>
