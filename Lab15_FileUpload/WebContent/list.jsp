<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.lab15.bean.BookVO,com.lab15.dao.BookDao,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
		margin-right: 50px;
	}
</style>
<script>
	function delete_ok(id) {
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) 
				location.href = "delete_ok.jsp?id="+id;
		}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		BookDao bookdao = new BookDao();
		List<BookVO> list = bookdao.getBookList();
		request.setAttribute("list", list);
	%>
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
	
	<h1>List of Books(${fn:length(list) })</h1>

	<table class="table table-hover">
		<tr>
			<th>Title</th>
			<th>Author</th>
			<th>Comment</th>
			<th>Regdate</th>
			<th><a class="btn btn-sm btn-success" href="addform.jsp">Add</a></th>
		</tr>
		<c:forEach items="${list }" var="u">
			<tr>
				<td>${u.getTitle()}</td>
				<td>${u.getWriter()}</td>
				<td>${u.getContent()}</td>
				<td>${u.getRegdate()}</td>
				<td>
					<a class="btn btn-sm btn-warning" href="editform.jsp?id=${u.getSeq()}">Edit</a>
					<a class="btn btn-sm btn-danger" href="javascript:delete_ok('${u.getSeq()}')">Delete</a>
					<a class="btn btn-sm" href="view.jsp?id=${u.getSeq()}">More</a>
					<c:if test="${u.getPhoto() ne null}" ><a class = "btn btn-sm" href="${pageContext.request.contextPath }/uploadFile/${u.getPhoto()}">File</a></c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<footer>
		<p>&copy; - 2021Camp - JeongHyun Park</p>
	</footer>

</body>
</html>