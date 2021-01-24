<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.io.File"   %>
  <%@page import="com.oreilly.servlet.*"   %>
  <%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"   %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
				
				//폼에서 가져온 데이터 값 파라미터 가져옴!
				String title = multipartrequest.getParameter("title");
				filename = multipartrequest.getFilesystemName("photo");				
		%>
		제목: <%=title %> <br>
		파일명: <%=filename %><br>
		<!--파일이 저장되어 있는 서버 상의 위치 참조! url을 참조한다. localhost:8080//~/project/ -->
		<img src="${pageContext.request.contextPath }/uploadFile/<%=filename %>" height="300"/>
</body>
</html>