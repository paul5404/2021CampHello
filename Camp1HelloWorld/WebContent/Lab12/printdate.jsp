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
<%
	out.println("Today is : " + Calendar.getInstance().getTime()); 
%>
<h2>Hello World!</h2>
<p><%=request.getParameter("myname") %></p>

</body>
</html>