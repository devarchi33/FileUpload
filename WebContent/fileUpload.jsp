<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>

<%
	String uploadPath = request.getSession().getServletContext().getRealPath("upload");

	int size = 10*1024*1024;
	
	String name = "";
	String subject = "";
	String fileName1 = "";
	String fileName2 = "";
	String origFileName1 = "";
	String origFileName2 = "";
	try{
		MultipartRequest multi = new MultipartRequest(request,
													  uploadPath,
													  size,
													  "euc-kr",
													  new DefaultFileRenamePolicy());
		
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		Enumeration<String> files = multi.getFileNames();
		
		String file1 = files.nextElement();
		fileName1 = multi.getFilesystemName(file1);
		origFileName1 = multi.getOriginalFileName(file1);

		String file2 = files.nextElement();
		fileName2 = multi.getFilesystemName(file2);
		origFileName2 = multi.getOriginalFileName(file2);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="fileCheck.jsp" method="post" name="filecheck">
		<input type="hidden" name="name" value="<%=name %>" /> 
		<input type="hidden" name="subject" value="<%=subject %>" /> 
		<input type="hidden" name="fileName1" value="<%=fileName1 %>" /> 
		<input type="hidden" name="fileName2" value="<%=fileName2 %>" /> 
		<input type="hidden" name="origFileName1" value="<%=origFileName1 %>" /> 
		<input type="hidden" name="origFileName2" value="<%=origFileName2 %>" />
		<p><a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동.</a></p>
	</form>
</body>
</html>