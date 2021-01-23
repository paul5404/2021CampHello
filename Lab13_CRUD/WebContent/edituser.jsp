<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.lab13.dao.UserDao"%>
	<jsp:useBean id="u" class="com.lab13.bean.User" />
	<jsp:setProperty name="u" property="*" />
	<%
			int i = UserDao.update(u);
			response.sendRedirect("viewusers.jsp");
	%>
</body>
</html>