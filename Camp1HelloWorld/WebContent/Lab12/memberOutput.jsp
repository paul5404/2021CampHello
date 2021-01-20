<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>아이디 : ${u.userId}</p>
	<p>패스워드 : ${u.password}</p>
	<p>이메일 : ${u.email}</p>
	<p>이메일 수신여부 :${u.emailAgree}</p>
	<p>관심사항:</p>
	<p><%=String.join(", ", request.getParameterValues("interest"))%></p>
	<p>핸드폰 : ${u.hp_1}-${u.hp_2}</p>
	<p>자기소개: </p>
	${u.introduce}

</body>
</html>