<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.lab15.dao.BookDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String seq = request.getParameter("id");
	if(seq !="") {
		BookDao dao = new BookDao();
		dao.delete(Integer.parseInt(seq));
	}
	response.sendRedirect("list.jsp");
%>
</body>
</html>