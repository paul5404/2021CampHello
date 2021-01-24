<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@page import="com.lab15.bean.BookVO,com.lab15.dao.BookDao"%>
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
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="introduce.jsp">Lab15-박정현</a>
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
	<%
		String seq = request.getParameter("id");
	BookDao dao = new BookDao();
	BookVO vo = dao.getBook(Integer.parseInt(seq));
	%>
	<h1>Edit Form</h1>
	<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
		<input type="hidden" name="seq" value="<%=vo.getSeq()%>" />
		<div class="form-horizontal">

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Title">Title</label>
				<div class="col-sm-7">
					<input autofocus class="form-control" type="text" name="title"
						value="<%=vo.getTitle()%>">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Author">Author</label>
				<div class="col-sm-7">
					<input class="form-control" type="text" name="writer"
						value="<%=vo.getWriter()%>">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="photo">File</label>
				<div class="col-sm-7">
					<input class="form-control" type="file" name="photo" /><br><br>
					<img src="${pageContext.request.contextPath }/uploadFile/<%=vo.getPhoto()%>" width="300">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Comments">Comments</label>
				<div class="col-sm-7">
					<textarea class="form-control" name="content" rows="4" cols="20"><%=vo.getContent()%></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2"></label>
				<div class="col-sm-10">
					<input type="submit" value="Update"
						class="btn btn-default btn-warning"> <a href="list.jsp"
						class="btn btn-outline-dark cancel">Cancel</a>
				</div>
			</div>
		</div>
	</form>
	<br>
	<footer>
		<p>&copy; - 2021Camp - JeongHyun Park</p>
	</footer>

</body>
</html>