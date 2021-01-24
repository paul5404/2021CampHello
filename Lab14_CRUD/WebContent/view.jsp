<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.lab14.dao.BookDao,com.lab14.bean.BookVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
body {
	margin-left: 50px;
	maring-right: 50px;
}
</style>
</head>
<body>
	<%
		String seq = request.getParameter("id");
	BookDao dao = new BookDao();
	BookVO vo = dao.getBook(Integer.parseInt(seq));
	%>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="introduce.jsp">Lab14-박정현</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="data.jsp">Data</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="list.jsp">Books</a>
				</li>
			</ul>
		</nav>
	</header>
		<h1>View</h1>
	
	<div class="form-horizontal">

		<div class="form-group row">
			<label class="col-form-label col-sm-2" for="Title">Title</label>
			<div class="col-sm-7">
				<input readonly class="form-control" id="Title"
					value="<%=vo.getTitle()%>" />
			</div>
		</div>

		<div class="form-group row">
			<label class="col-form-label col-sm-2" for="Author">Author</label>
			<div class="col-sm-7">
				<input readonly class="form-control" id="Author"
					value="<%=vo.getWriter()%>" />
			</div>
		</div>

		<div class="form-group row">
			<label class="col-form-label col-sm-2" for="Comments">Comments</label>
			<div class="col-sm-7">
				<textarea readonly class="form-control" cols="20" id="Comments"
					 rows="4"><%=vo.getContent()%></textarea>
			</div>
		</div>
	</div>

	<div class="form-group row">
		<label class="col-form-label col-sm-2"></label>
		<div class="col-sm-10">
			<a href="list.jsp" class="btn btn-outline-dark cancel">Back</a>
		</div>
	</div>
	<footer>
		<p>&copy; - 2021Camp - JeongHyun Park</p>
	</footer>

</body>
</html>