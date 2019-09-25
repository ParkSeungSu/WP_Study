<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>First</title>
</head>
<body>
	<h3>this is first</h3>
	<script>console.log("first page");</script>
	<jsp:include page="second.jsp" flush="true"/>
	<script>console.log("first page2");</script>
	<h3>Welcome first Page</h3>
	</body>
</html>