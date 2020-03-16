<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration en=session.getAttributeNames();
		String name;
		String value;
		
		int i =0;
		while(en.hasMoreElements()){
			i++;
			name=en.nextElement().toString();
			value=session.getAttribute(name).toString();
			out.println("["+i+"]번째  "+name+"속성 : "+value+"<br>");
		}
	%>

</body>
</html>