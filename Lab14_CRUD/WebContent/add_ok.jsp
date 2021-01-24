<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.lab14.dao.BookDao"%>
	<jsp:useBean id="u" class="com.lab14.bean.BookVO" />
	<jsp:setProperty property="*" name="u" />
	<%
		BookDao dao = new BookDao();
		int i = dao.save(u);
		String msg = "데이터 추가 성공!";
		if (i == 0)
			msg = "[에러] 데이터 삭제 ";
	%>
	<script>
		alert('<%=msg%>');
		location.href = "list.jsp";
	</script>
</body>
</html>