
<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body style="background-image:url('bgimg.jpg');background-repeat: no-repeat; background-size:cover;background-color:#B0C4DE">
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
  <div class="header-right">
    <a href="index.jsp">Home</a>
    
  </div>
  <h2><center>Blood Bank Adminstration Login</center> </h2>
</div>
<body>
<div class="container">
<br>
	<br>
	<%
	String msg=request.getParameter("msg");
	if("invalid".equals(msg)){
		%>
		<center><font color="red" size="5">Invalid Username/Password</font></center>
		<%
	}
	%>
<form action="adminLoginAction.jsp" method="post">
<div class="form-group">
<center>
<h2>Username</h2>
</center>
<input type="text" placeholder="Enter your name" name="adminname" required>
<center>
<h2>Password</h2>
</center>
<input type="password" placeholder="Enter password" name="password" required>
<center><button type="submit" class="button">Submit</button></center>
</div>
</form>
	
	
	
	
</div>

</body>
</html>
