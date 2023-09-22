<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String status="pending";
try{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobilenumber);
	ps.setString(3,email);
	ps.setString(4,bloodgroup);
	ps.setString(5,status);
	ps.executeUpdate();
	response.sendRedirect("Paitenregister.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("Paitenregister.jsp?msg=invalid");
}

%>
