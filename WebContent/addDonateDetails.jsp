<%@page import="com.java.Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.html"%>
<%
String dname = session.getAttribute("name").toString();
System.out.println(dname);
String name=request.getParameter("name");
String father=request.getParameter("father");

try{
Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("insert into donoradddate values(?,?,?,?,?)");

ps.setInt(1,0);
ps.setString(2,dname);
ps.setString(3,name);
ps.setString(4,father);
ps.setString(5,"Approvel");
int  i =ps.executeUpdate();
if(i>0){
response.sendRedirect("donorhome.jsp");
}
}
catch(Exception e){
	response.sendRedirect("addNewDonor.jsp?msg=invalid");
}
%>