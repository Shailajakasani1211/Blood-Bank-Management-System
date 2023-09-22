<head>
<title>Blood Bank</title>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
	
}
</style>
</head>
<body style="background-color:#B0C4DE;">

<div class="header">
  <a href="#default" class="logo"><img class="logo" src="logo.png"></a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a  href="donorlogin.jsp">Donor Login</a>
    <a  href="Paitenregister.jsp">Patient Register</a>
    <a  href="patientlogin.jsp">Patient Login</a>
    <a href="addNewDonor.jsp">Donor Registration Form</a>
    <a href="adminLogin.jsp">BloodBankAdminstration Login</a>
    <a href="ContactUs.html">AboutUs</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="img3.jpg" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


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

 
 
 
 
  <br>
  <br>
  </div>
</div>

<div class="row1"> 
<div class="container"> 
<br>         
<br>

</div>
</div>

</body>
</html>

