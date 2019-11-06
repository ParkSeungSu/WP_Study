<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8",
			new DefaultFileRenamePolicy());
	//5MB					똑같은 이름의 파일이 있을때 이름을 자동으로 바꾼다,
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");

	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");

	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");

	Enumeration files = multi.getFileNames();

	String file1 = (String) files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	String type1 = multi.getContentType(file1);
	File file11 = multi.getFile(file1);
	String file2 = (String) files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	String type2 = multi.getContentType(file2);
	File file22 = multi.getFile(file2);
	String file3 = (String) files.nextElement();
	String filename3 = multi.getFilesystemName(file3);
	String type3 = multi.getContentType(file3);
	File file33 = multi.getFile(file3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file upload</title>
</head>
<body>
	<table
		style="text-align: center; border: 5px dotted #D1E3FF; background-color: #B3D5E8;">
		<tr>
			<th width="100px">이름</th>
			<th width="100px">제목</th>
			<th width="100px">타입</th>
			<th width="100px">파일</th>
			<th width="100px">파일 크기</th>
		
		</tr>
		<tr>
			<td><%=name1%></td>
			<td><%=subject1%></td>
			<td><%=type1%></td>
			<td><%=filename1%></td>
			<td><%=file11.length()%>byte</td>
			
		</tr>
		<tr>
			<td><%=name2%></td>
			<td><%=subject2%></td>
			<td><%=type2%></td>
			<td><%=filename2%></td>
			<td><%=file22.length()%>byte</td>
			
		</tr>
		<tr>
			<td><%=name3%></td>
			<td><%=subject3%></td>
			<td><%=type3%></td>
			<td><%=filename3%></td>
			<td><%=file33.length()%>byte</td>
			
		</tr>
	</table>
	
</body>
</html>