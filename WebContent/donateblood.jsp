<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Donor Form</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="date"], input[type="time"], select,input[type="number"]
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
<body style="background-image:url('background.jpg');background-repeat: no-repeat; background-size:cover">
<h2><a href="index.jsp">Home</a></h2>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<center><font color="red" size="5">Successfully Registered, Now you can login <a href="donorlogin.jsp">Login here</a></font></center>
	<%
}
%>
<%

if("invalid".equals(msg)){
	%>
	<center><font color="red" size="5">Something went Wrong, Please try again after some time!</font></center>
	<%
}
%>
<div class="container">
<form action="addDonateDetails.jsp" method="post">
<h2>Date </h2>
<input type="date" placeholder="Enter date to donate blood" name="name" required>
<hr>
<h2>Time</h2>
<input type="time" placeholder="enter time" name="father" required>
<hr>
<br><br><br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>




  </div>

</body>
</html>