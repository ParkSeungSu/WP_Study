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
		String id=request.getParameter("id");
		String pw=request.getParameter("passwd");
		
		if(id.equals("admin")&&pw.equals("1234")){
			session.setAttribute("id", id);
			session.setAttribute("passwd", pw);
			out.println("세션 설정 성공! <br>");
			out.println(session.getAttribute("id")+" 님 환영합니다. <br>");
			out.println(session.getMaxInactiveInterval()/60+"");
		}else{
			out.println(" 세션 설정 실패 ");
		}
		out.println("id : "+session.getId()+"<br>");
		out.println("creationTime : "+session.getCreationTime()+"<br>");
		out.println("lastAcceseesdTime : "+session.getLastAccessedTime()+"<br>");
		out.println("servletContext : "+session.getServletContext()+"<br>");
		out.println("sessionContext : "+session.getSessionContext().toString()+"<br>");
		out.println("valueNames : "+session.getValueNames().toString()+"<br>");
	
	%>

</body>
</html>