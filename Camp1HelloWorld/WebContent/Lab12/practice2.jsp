<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>This is an index page.</h2>

<jsp:forward page="printdate.jsp">
	<jsp:param name='myname' value='www.javatpoint.com' />
</jsp:forward>

<h3>Include Action Tag Example</h3>
<jsp:include page="printdate.jsp" />


</body>
</html>