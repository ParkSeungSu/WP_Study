<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Second</title>
</head>
<body>
	<h3>이 파일은 second.jsp입니다.</h3>
	<p><%=new Date()
	%>
	<script type="text/javascript">
	console.log("second");
	</script>
</body>
</html>