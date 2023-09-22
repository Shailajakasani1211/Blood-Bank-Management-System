<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header1.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body style="background-image:url('background.jpg');background-repeat: no-repeat; background-size:cover">
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
<center><font color="red" size="5">Successfully updated</font></center>
<% }
%>
<%
if("deleted".equals(msg))
{%>
<center><font color="red" size="5">Successfully deleted</font></center>
<% }
%>
<%
if("invalid".equals(msg))
{%>
<center><font color="red" size="5">Something Went Wrong!Try again..</font></center>
<% }
%>


<table id="customers">

<tr>

<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Mobile Number</th>
<th>Gender</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Edit</th>
</tr>

<%
String name = (String)session.getAttribute("name");
System.out.println(name);

try{
	 Connection connection=ConnectionProvider.getConnection();
	 Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery("select * from donor where name='"+name+"'");
	while(rs.next()){
%>
	<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(7) %></td>
	<td><%=rs.getString(8) %></td>
	<td><a href="updateDonor.jsp?ab=<%=rs.getString(1)%>">edit</a></td>
	
	</tr>
		<%
	}
   }
    catch(Exception e){
	  System.out.println(e);
}
		%>
	</table>


</body>
</html>