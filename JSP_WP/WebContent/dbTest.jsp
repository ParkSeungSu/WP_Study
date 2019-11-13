<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection con=null;
	try{
		String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
		String id="root";
		String pw="dl6tlqdl";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,id,pw);
		out.println("연결됬어<br>");
	}catch(Exception e){
		out.println(e.toString());
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String qeury="SHOW FULL COLUMNS FROM product";
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(qeury);
	while(rs.next()){
		out.println(rs.getString(1)+", type: "+rs.getString(2)+", Null: "+rs.getString(4)+"<br>");
	}
	qeury="select * FROM product";
	rs=stmt.executeQuery(qeury);
	while(rs.next()){
		out.println("id: "+rs.getString(1)+", name: "+rs.getString(2)+", price: "+rs.getString(3)+"<br>");
	}
}catch(Exception e){
	out.println(e.toString());
}
%>

</body>
</html>