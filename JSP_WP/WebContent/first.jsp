<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>First</title>
</head>
<body>
	<h3>Action Tag</h3>
	<script>
		console.log("first page");
	</script>
	<p>
		-------------------------------------------
		<jsp:include page="second.jsp" flush="true" >
			<jsp:param value="admin" name="id"/>
			<jsp:param value='<%=URLEncoder.encode("관리자") %>' name="name"/>
		</jsp:include>
	<p>
		-------------------------------------------
		<script>
			console.log("first page2");
		</script>
	<h3>Welcome first Page</h3>
</body>
</html>