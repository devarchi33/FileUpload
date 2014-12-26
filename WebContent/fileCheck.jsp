<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	//아래 두줄 추가.
	String origFileName1 = request.getParameter("origFileName1");
	String origFileName2 = request.getParameter("origFileName2");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파일 업로드 확인 및 다운로드</title>
</head>
<body>
	올린 사람 : <%=name %> <br />
	제목 : <%=subject %> <br />
	<!-- 파일 명 링크 거는 부분 수정함. -->
	파일명1 : <a href="file_down.jsp?file_name=<%=fileName1 %>"><%=origFileName1 %></a> <br />
	파일명2 : <a href="file_down.jsp?file_name=<%=fileName2 %>"><%=origFileName2 %></a>
</body>
</html>