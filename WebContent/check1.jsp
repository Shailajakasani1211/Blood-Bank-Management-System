<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Details</title>
</head>
<body>
	 <%
        String bg = request.getParameter("bloodgroup");
        Cookie cookie = new Cookie("bg",bg);
        response.addCookie(cookie);
        cookie.setMaxAge(90*60);
        response.sendRedirect("editDeleteList.jsp");
        %>
</body>
</html>