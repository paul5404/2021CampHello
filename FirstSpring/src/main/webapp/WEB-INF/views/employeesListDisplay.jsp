<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Hello World</title>
<style>
table {
	border-collapse: collapse;
}
tr, td {
	width: 350px;
	text-align: center;
	border: 1px solid black;
}
</style>
</head>
<body>
	<h2>All Employees in System(Lab 16)</h2>
	<table border = "1">
		<tr>
			<th>Employee Id</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach items="${employees }" var="u">
			<tr>
				<td>${u.id }</td>
				<td>${u.firstName }</td>
				<td>${u.lastName}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>