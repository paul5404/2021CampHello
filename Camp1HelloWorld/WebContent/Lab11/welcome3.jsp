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
			//앞에 폼에서 작성한 uname이 리턴됨.
			String name = (String)session.getAttribute("user");

		
			out.println("안녕! "+ name);
		
		%>
</body>
</html>