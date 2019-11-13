<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import ="java.sql.*" %>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
 <% Connection conn= null;
 	try {
 		String url = "jdbc:mysql://localhost:3306/a";
 		String user = "root";
 		String password = "1234";
 		
 		Class.forName("com.mysql.jdbc.Driver");
 		conn = DriverManager.getConnection(url,user,password);
 		out.println("ss");
 		} catch (SQLException ex){
 			out.println("ff");
 			out.println("SQLException:" + ex.getMessage());
 		} finally {
 			if(conn !=null)
 				conn.close();
 		}
 	
 	%>
</body>
</html>