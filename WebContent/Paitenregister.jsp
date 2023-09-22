
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>patient Form</title>
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
<div class="container">
 <center><h1>Enter Your Details to Request for Blood</h1></center>
 
 <form action="indexFormAction.jsp" method="post">
 
 
 <h2>Name</h2>
 <input type="text" name="name" pattern="^[^0-9][A-Za-z ]+" placeholder="Enter your Name:" required title="Please provide valid name it should not start with Numbers or specialCharacters"required>><br><br>
 <h2>mobile number</h2>
 <input type="text" name="mobilenumber" pattern="[6789][0-9]{9}" title="Please enter valid Phone number it should start with 6 or 7 or 8 or 9." placeholder="Enter Mobile Number:" required><br><br>
 <h2>mail</h2>
 <input type="email" name="email"    pattern=".+@(gmail|yahoo|hotmail).com" placeholder="Enter Email Address" required title="you have entered wrong mail id it should be as @gamil.com or @yahoo.com or @hotmail.com"><br><br>
<h2>blood group</h2>
  <td><select id="blood-grp" name="bloodgroup">
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                            </select>
                        </td>
 <button class="button1"><span>Submit</span></button><br>
 
 </form>
</body>
</html>
  <br>
 

<body>
  <br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<center><font color="red" size="5">Form Submitted Successfully. <br> To check status please <a href="patientlogin.jsp">login </a></font></center>
	<%
}
%>
<%

if("invalid".equals(msg)){
	%>
	<center><font color="red" size="5">Invalid Data .Try again....</font></center>
	<%
}
%>
