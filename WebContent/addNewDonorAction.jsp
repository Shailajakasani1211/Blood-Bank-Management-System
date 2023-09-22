<%@page import="com.java.Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.html"%>
<%

String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address");

try{
Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,father);
ps.setString(3,mother);
ps.setString(4,mobilenumber);
ps.setString(5,gender);
ps.setString(6,email);
ps.setString(7,bloodgroup);
ps.setString(8,address);
ps.executeUpdate();
response.sendRedirect("addNewDonor.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("addNewDonor.jsp?msg=invalid");
}
%>