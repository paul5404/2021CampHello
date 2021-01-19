<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><% out.print("Welcome to JSP"); %></h1>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		String uname = request.getParameter("uname");
		out.println("Hello " + uname);
		
		session.setAttribute("user",uname);
		
	%>
	<br>
	<a href = "welcome3.jsp">Second JSP Page</a>
	
	
	<h2><%= "Welcome to JSP(expression tag)" %></h2>
	Current Time: <%= Calendar.getInstance().getTime() %><br>
	<%= "Hello" + request.getParameter("uname") + "(Expression tag)"%>
	<br>
	
	<h2>JSP Declaration Tag</h2>
	<%!
		int cube(int x) {
		return x * x * x;
	}
	%>
	
	<%= "Cube of 3 is :" + cube(3) %><br>
	
	

</body>
</html>