<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "javax.servlet.http.HttpSession" %>
<%@page import = "com.bvrit.employeelogintable.dao.EmployeeDAO"%>
<%@page import = "com.bvrit.employeelogintable.dao.Employee"%>
<% 

 String user=(String)session.getAttribute("user1");
if(user == null){
	response.sendRedirect("loginView.jsp");
}
%>
<% 
 EmployeeDAO cd = new EmployeeDAO();
 ArrayList<Employee> alc = cd.getAllDetails(user);
 Iterator<Employee> itr = alc.iterator();
%>
<%
HttpSession ses = request.getSession();
String username = ses.getAttribute("user1").toString();
String role = ses.getAttribute("role1").toString();
%>



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
<h3>Welcome  <%=username%></h3>
<div class="container">
  <div class = "row">
  <div class="col-sm-6 col-md-4 col-md-offset-4">
  
  <div class = "well">
  <h2><center>SELF INFORMATION</center></h2>
  <form action = "logout.jsp">
<input type = "submit" value = LOGOUT>
</form>

</form>
  
  <% 
while(itr.hasNext())
{
 Employee c = (Employee)itr.next();
%>
  <form role="form" action = "updateemployee" method = "post">
    <div class="form-group">
      <label for="fname">Name:</label>
      <input type="text" class="form-control" id="fname" name = fname value="<%=c.name%>" required>
    </div>
    <div class="form-group">
      <label for="phoneno">Phone Number:</label>
      <input type="text" class="form-control" id="phoneno" name = phone length = 10 value="<%=c.phno%>" required>
    </div>
    <div class="form-group">
      <label for="email">Email id:</label>
      <input type="email" class="form-control" id="email" name = email value="<%=c.email%>" required>
    </div>
    <div class="form-group">
      <label for="role">Role</label>
      <input type="text" class="form-control" id="role" name = role value="<%=c.role%>" required>
    </div>
    <div class="form-group">
      <label for="company">Company:</label>
      <input type="text" class="form-control" id="company" name = company value="<%=c.company%>" required>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="textfeild" class="form-control" id="address" name = address value="<%=c.address%>" required>
    </div>
    <div class="form-group">
      <label for="designation">Designation:</label>
      <input type="designation" class="form-control" id="designation" name = designation value="<%=c.designation%>" required>
    </div>
    <div class="form-group">
      <label for="role_id">Role id:</label>
      <input type="text" class="form-control" id="role_id" name = role_id value="<%=c.role_id%>" required readonly>
    </div>
    <%} %>
    
    <button type="submit" class="btn btn-danger">UPDATE</button>
   </form>
   </div>   
  </div>
</div>
</div>

</body>
</html>



