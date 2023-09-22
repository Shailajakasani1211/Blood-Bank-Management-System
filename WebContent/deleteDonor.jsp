<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
<%
String id=request.getParameter("ab");
try{
	System.out.println(id);
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor where name='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
	}
catch(Exception e){
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
}
%>