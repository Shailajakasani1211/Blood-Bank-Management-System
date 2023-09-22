<%@page import="com.java.Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.html"%>
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
  .getDetail{
            margin-left: 1%;
            margin-top: 2%;
        }
  .bt{
            margin-left: 2%;
            padding: 10px 10px;
            border: none;
            outline: none;
            background-color:black;
            color: white;
            font-size: 16px;
        }
</style>
</head>
<body>

<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
<center><font color="red" size="5">Successfully updated</font></center>
<% }
%>
<%
if("invalid".equals(msg))
{%>
<center><font color="red" size="5">Something Went Wrong!Try again..</font></center>
<% }
%>

 <form method="post" action="editDeleteList1.jsp">
                <t><strong>SELECT BLOOD GROUP : </strong></t>
				<select id="blood-grp" name="bloodgroup">
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select>
                <input class="bt" type="submit" value="GET DETAILS">
  </form>
  <br>
  <center><table id="customers">
		<tr>
		
		<th>Name</th>
		<th>Father Name</th>
		<th>Mother Name</th>
		<th>Mobile Number</th>
		<th>Gender</th>
		<th>Email</th>
		<th>Blood Group</th>
		<th>Address</th>
		
		<th>Delete</th> 
		</tr>
		<tr>
		<%
		String bg = (String)session.getAttribute("bloodgroup");
		System.out.println(bg);
		try{
			
			 Connection connection=ConnectionProvider.getConnection();
			 Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery("select * from donor");
			while(rs.next()){
		%>
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>
			<td><a href="deleteDonor.jsp?ab=<%=rs.getString(1)%>">Delete</a></td> 
			</tr>
				<%
			}
		}
		    catch(Exception e){
			  System.out.println(e);
		}
		%>
	</table>
	</center>

</body>
</html>