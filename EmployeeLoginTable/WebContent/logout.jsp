<%
session.removeAttribute("user1");
session.invalidate();
%>
<jsp:forward page = "index.jsp"></jsp:forward>