<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header1.html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>

<%
String id=request.getParameter("name");
try{
	Connection con=ConnectionProvider.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from donor where name='"+id+"'");
	while(rs.next()){
%>
<div class="container">
<form action="updateDonorAction1.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">
<h2>Name</h2>
<input type="text" value="<%=rs.getString(2) %>" name="name">
<hr>
<h2>Father Name</h2>
<input type="text" value="<%=rs.getString(3) %>" name="father">
<hr>
<h2>Mother Name</h2>
<input type="text" value="<%=rs.getString(4) %>" name="mother"><hr>
<h2>Mobile Number</h2>
<input type="number" value="<%=rs.getString(5) %>" name="mobilenumber"><hr>
<h2>email</h2>
<input type="email" value="<%=rs.getString(7) %>" name="email"><hr>
<h2>Address</h2>
<input type="text" value="<%=rs.getString(9) %>" name="address">
<br>
<br>
<center><button type="submit" class="button">Save</button></center>

</form>
</div>
<%
	}
}
catch(Exception e){
	System.out.println(e);
}
%>

<br>
<br>
<br>
<br>
<h3><center>@All Right Reserved :: 2023 </center></h3>

</body>
</html>