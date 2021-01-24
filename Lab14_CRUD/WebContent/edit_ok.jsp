<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 <%@page import = "com.lab14.dao.BookDao" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.lab14.bean.BookVO" />
<jsp:setProperty property="*" name="u" />

<%
		BookDao dao = new BookDao();
		int i = dao.update(u);
		if(i != 0) 
			response.sendRedirect("list.jsp");
%>
</body>
</html>