<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	
	<div align="center" style="margin: 5px;border: 5px solid black; width: auto;">
	<table border="1">
	<th>요청 파라미터 이름</th>
	<th>요청 파라미터 값</th>
	<%
		request.setCharacterEncoding("UTF-8");
		
		Enumeration paramNames=request.getParameterNames();
		while(paramNames.hasMoreElements()){
			String name=(String)paramNames.nextElement();
			out.println("<tr><td>"+name+" </td>\n");
			String paramValue=request.getParameter(name);
			out.println("<td> "+paramValue+"</td></tr>\n");
		}
	
	%>
	</table>
	</div>
</body>
</html>