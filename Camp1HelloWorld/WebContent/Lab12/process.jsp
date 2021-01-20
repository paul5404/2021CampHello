<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="u" class="com.javatpoint.User" />
	<jsp:setProperty name="u" property="*" />
	 Record: <br>
	 Name: <jsp:getProperty name="u" property="name" /><br>
	 Password: <jsp:getProperty name="u" property="password" /><br>
	 Email: <jsp:getProperty name="u" property="email" /><br>
</body>
</html>