<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<div class="container">
  <div class = "row">
  <div class="col-sm-6 col-md-4 col-md-offset-4">
  
  <div class = "well">
  <h2><center>Sign up</center></h2>
  <form role="form" action = "signup" method = "post">
    <div class="form-group">
      <label for="user">UserName:</label>
      <input type="text" class="form-control" id="user" name = user placeholder="Enter  username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name = password placeholder="Enter password" required>
    </div>
    
    <button type="submit" class="btn btn-danger">Sign In</button>
    <a href = "loginView.jsp" >do you already have an account?</a>
   </form>
   </div>   
  </div>
</div>
</div>
</body>
</html>
