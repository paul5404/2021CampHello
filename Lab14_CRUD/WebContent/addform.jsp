<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<h1>Add New Book</h1>
	<form method="post" action="add_ok.jsp">
		<div class="form-horizontal">

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Title">Title</label>
				<div class="col-sm-7">
					<input autofocus class="form-control" type="text" name="title">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Author">Author</label>
				<div class="col-sm-7">
					<input class="form-control"  type = "text" name="writer" >
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2" for="Comments">Comments</label>
				<div class="col-sm-7">
					<textarea class="form-control" name="content" rows="4" cols="20"></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2"></label>
				<div class="col-sm-10">
					<input type="submit" value="Save"
						class="btn btn-default btn-success"> <a href="list.jsp"
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