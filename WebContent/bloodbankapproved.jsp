<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=ConnectionProvider.getConnection();
	PreparedStatement ps=con.prepareStatement("update donoradddate set d_status='completed' where d_id=?");
	ps.setString(1,mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("donorappointmentdetails.jsp");
}
catch(Exception e){
	e.printStackTrace();
}
%>