	\
	<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Donor Form</title>
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
<form action="addNewDonorAction.jsp" method="post">
<h2>Name</h2>
<input type="text" placeholder="Enter Name" name="name" required>
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="enter father name" name="father" required>
<hr>
<h2>Mother Name</h2>
<input type="text" placeholder="enter mother name" name="mother" required><hr>
<h2>Mobile Number</h2>
<input type="text" pattern="[6789][0-9]{9}" title="Please enter valid Phone number" placeholder="enter Mobile name" name="mobilenumber" required><hr>
<h2>Gender</h2>
<select name="gender">
<option value="male" required>Male</option>
<option value="female" required>female</option>
<option value="others" required>Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" pattern=".+@gmail\.com" placeholder="enter your mail Id" name="email" required>
<hr>
<h2>Blood group</h2>
<select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="enter address" name="address" required>
<br><br><br>
<center><button type="submit" class="button">Save</button></center>
</form>
</div>




  </div>

</body>
</html>