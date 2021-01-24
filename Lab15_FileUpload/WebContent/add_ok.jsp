<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.lab15.bean.BookVO,com.lab15.dao.BookDao"%>
	<%@ page import="java.io.File"%>
	<%@ page import="com.oreilly.servlet.*"%>
	<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
	
	<%
		String filename = "";
		int size = 15 * 1024 * 1024; //15mb
		
		//상대경로 -> 절대경로로 가져옴!
		String realPath = request.getServletContext().getRealPath("uploadFile");
		//System.out.println(realPath);
		
		//업로드 파일이 없는경우 새로 생성!
		File dir = new File(realPath);
		if(!dir.exists())
				dir.mkdir();
		
		MultipartRequest multipartrequest = null;
		multipartrequest = new MultipartRequest(request, realPath, size, "utf-8", new DefaultFileRenamePolicy());
		
		String title = multipartrequest.getParameter("title");
		String writer = multipartrequest.getParameter("writer");
		String content = multipartrequest.getParameter("content");
		filename =  multipartrequest.getFilesystemName("photo");
		
		BookVO vo = new BookVO();
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setContent(content);
		vo.setPhoto(filename);
		BookDao dao = new BookDao();
		int i = dao.save(vo);
		
		String msg = "데이터 추가 성공!";
		if (i == 0)
			msg = "[에러] 데이터 삭제 ";
	%>
	<script>
		alert('<%=msg%>');
		location.href = "list.jsp";
	</script>
</body>
</html>