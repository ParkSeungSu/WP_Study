<%@page import="java.net.URLDecoder"%>
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
	<h3>Date Today</h3>
	<p>
		ID :
		<%=request.getParameter("id")%></p>
	<p>
		이름 :
		<%=URLDecoder.decode(request.getParameter("name"))%></p>
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator" />
	<jsp:useBean id="memberbean" class="ch04.com.dao.MemberBean" />
	<%
		memberbean.setId(32029);
		memberbean.setName("Park Seung Su");
		out.println("ID: " + memberbean.getId()+"<br>");
		out.println("Name: " + memberbean.getName()+"<br>");
		int m = bean.process(3);
		out.print("3의 3제곱 : " + m);
	%>
	<script type="text/javascript">
		console.log("second");
	</script>
</body>
</html>