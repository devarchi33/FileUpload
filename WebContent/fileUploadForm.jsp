<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>FileUpload Form</title>
</head>
<body>
	<center>
		<form action="fileUpload.jsp" method="post"
			enctype="multipart/form-data">
			<table border="1">
				<tr>
					<th colspan="2" align="center"><h3>���� ���ε� ��</h3></th>
				</tr>
				<tr>
					<th>�ø���� :</th>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<th>���� :</th>
					<td><input type="text" name="subject" /></td>
				</tr>
				<tr>
					<th>���ϸ�1 :</th>
					<td><input type="file" name="fileName1" /></td>
				</tr>
				<tr>
					<th>���ϸ�2 :</th>
					<td><input type="file" name="fileName2" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="���� " /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>