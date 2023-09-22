<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='you have Received' where mobilenumber=?");
	ps.setString(1,mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("requestCompleted.jsp");
}
catch(Exception e){
	e.printStackTrace();
}
%>