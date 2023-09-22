<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header1.html"%>
<%
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String address=request.getParameter("address");
try{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("update donor set name=?,father=?,mother=?,mobilenumber=?,email=?,address=? where name=?");
	ps.setString(1,name);
	ps.setString(2,father);
	ps.setString(3,mother);
	ps.setString(4,mobilenumber);
	ps.setString(5,email);
	ps.setString(6,address);
	ps.executeUpdate();
	response.sendRedirect("editDetails.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("editDetails.jsp?msg=invalid");
}
%>