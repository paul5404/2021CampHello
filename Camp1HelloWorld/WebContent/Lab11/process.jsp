<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String num1 = request.getParameter("n1");
		String num2 = request.getParameter("n2");
		
		int res = Integer.parseInt(num1) / Integer.parseInt(num2);
		
		out.println("Division of numbers is: " +  res);
	
%>
	
</body>
</html>