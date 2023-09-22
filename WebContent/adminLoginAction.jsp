
<%@include file="header.html"%>
<%
String username=request.getParameter("adminname");
String password=request.getParameter("password");
if("admin".equals(username)&&"admin".equals(password)){
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>