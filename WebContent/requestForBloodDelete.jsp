<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e){
	response.sendRedirect("requestForBlood");
}
%>