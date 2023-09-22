<%@include file="patientheader.html"%>
<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
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
<body>
<center><font color="red" size="5">If your request is accepted you can go and collect blood and blood bank details are available in about us <br>  <a href="ContactUs.html">aboutus </a></font></center>
	
<br>
<center>
<table id="customers">
<tr>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood group</th>
<th>Status</th>
</tr>
<tr>
<%
try{
	System.out.println("jjjjjjjjjj");
	String name = (String)session.getAttribute("name");
    System.out.println(name);
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	System.out.println("select * from bloodrequest where name='"+name+"'");
	ResultSet rs=st.executeQuery("select * from bloodrequest where name='"+name+"'");
	while(rs.next())
	{
		%>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		</tr>
		<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>




</center>

</body>
</html>