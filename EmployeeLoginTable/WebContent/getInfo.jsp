<%@page import = "com.bvrit.employeelogintable.dao.EmployeeDAO"%>
<%@page import = "com.bvrit.employeelogintable.dao.Employee"%>


<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "javax.servlet.http.HttpSession" %>

<%
HttpSession ses = request.getSession();
String username = ses.getAttribute("user1").toString();
String role = ses.getAttribute("role1").toString();
%>


<% 
 EmployeeDAO cd = new EmployeeDAO();
 ArrayList<Employee> alc = cd.getAllContacts(role);
 Iterator<Employee> itr = alc.iterator();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>home page</title>
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
  <div class="col-sm-6 col-md-8 col-md-offset-2">
  <div class = "well"><center><h2>Employee List</h2></center></div>
  <div class = "well">     
    <ul class="nav navbar-nav">
    </ul>
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
  <table class="table table-striped" id = "example">

<thead>
<tr>

<th>name</th>
<th>phone</th>
<th>e-mail</th>
<th>company</th>
<th>update</th>
</tr>
<% 
while(itr.hasNext())
{
 Employee c = (Employee)itr.next();
%>
<tr>

<td><%=c.name%></td>

<td><%=c.phno%></td>

<td><%=c.email%></td>
<td><%=c.company%></td>
<td><a href=updateView.jsp?name=<%=c.name%>&phoneno=<%=c.phno%>&email=<%=c.email%>&company=<%=c.company%>&address=<%=c.address%>&designation=<%=c.designation%>&role_id=<%=c.role_id%>&role=<%=c.role%> class="btn btn-success">Update<span class='glyphicon glyphicon-pencil'></button></a></td>
</tr>

<%

}

%>
<form action = "logout.jsp">
<input type = "submit" value = LOGOUT>
</form>
</body>
<script>

function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("example");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

</script>
</html>
