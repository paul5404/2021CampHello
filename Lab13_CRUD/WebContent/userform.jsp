<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="viewusers.jsp">View All Records</a>

	<h1>Add New User</h1>
	<form action="adduser.jsp" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male" />Male <input
					type="radio" name="sex" value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country" style="width: 155px">
						<option>Korea</option>
						<option>U.S.A</option>
						<option>Japan</option>
						<option>China</option>
						<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add User" /></td>
			</tr>
		</table>
	</form>
</body>
</html>