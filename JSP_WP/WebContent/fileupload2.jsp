<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>File Upload</title>
</head>
<body>
	<form name="fileFrom" action="fileupload02_process.jsp" method="post" enctype="multipart/form-data" >
		<p>이름 : <input type="text" name="name1">
			제목 : <input type="text" name="subject1">
			파일 : <input type="file" name="filename1">
		<p>이름 : <input type="text" name="name2">
			제목 : <input type="text" name="subject2">
			파일 : <input type="file" name="filename2">
		<p>이름 : <input type="text" name="name3">
			제목 : <input type="text" name="subject3">
			파일 : <input type="file" name="filename3">
		<p><input type="submit" value="Go">
	</form>
</body>
</html>