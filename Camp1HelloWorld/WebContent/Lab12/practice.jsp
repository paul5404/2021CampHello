<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Example JSP File of Lab12" buffer="8kb" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h2>Include Directives</h2>
	<%@ include file="form.html" %>
	<br>
	<h2>Page Directives</h2>
	<%@ page import="java.util.Date"%>
	<p>Today is : <%=new Date()%></p>
	<h2>Taglib Directives</h2>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="mytag" %>
	
	<mytag:set var='abc' value="123" />
	<mytag:out value='abc' /><br>
	
	<h2>useBean Example</h2>
	<jsp:useBean id="obj" class="com.javatpoint.Calculator" />
	<%
		int m = obj.cube(15);
		out.print("cube of 15 is " + m);
	
	%>
	<br>
	

</body>
</html>