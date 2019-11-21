<%@page import="java.sql.*"%>

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

