<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header1.html"%>
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
	String sql = "update donor set father='"+father+"',mother='"+mother+"',mobilenumber='"+mobilenumber+"',email='"+email+"',address='"+address+"' where name='"+name+"'";
	System.out.println(sql);
	PreparedStatement ps=con.prepareStatement(sql);
	
	ps.executeUpdate();
	response.sendRedirect("editDetails.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("editDetails.jsp?msg=invalid");
}
%>