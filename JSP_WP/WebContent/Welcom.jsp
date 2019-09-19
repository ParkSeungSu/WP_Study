<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class ="container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./Welcom.jsp"> Home </a>
				<a class = "navbar-brand" href="./Welcom.jsp"> House </a>
				<a class = "navbar-brand" href="./Welcom.jsp"> Beer </a>
			</div>
		</div>
	</nav>
	<%! String greeting = "WelCome to Web Shopping Mall";
		String tagline="Welcome to Web 상점!"; %>
	<footer class ="container">
		<p class ="display-1"><%=tagline %></p>
	</footer>	

		
</body>
</html>