<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-image:url('https://www.searchpng.com/wp-content/uploads/2019/02/Abstract-Background-PNG-715x715.png');
background-repeat:no-repeat;
background-position: center center;
}
</style>

<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
<center>
	<h1 style="color:#F29F05;border: 20px dotted #2703A677">Hello World</h1>
	<h2>this is practice</h2>
	<h3>박승수 아아</h3>
	<img alt="" src="https://miro.medium.com/max/640/1*VTbWcFzAwUnEG_al0-Wshw.png">
	<div style>
		<button>따아</button>
		 <button>아아</button>
	</div>
</center>
<span>
	<div><b>Script tag</b></div>
	<div>HTML 코드에 JAVA코드를 넣어 프로그램이 수행하는 기능을 구현</div>
</span>
<span>
	<div><b>Directive tag</b></div>
	<div>JSP 페이지에 대한 정보를 JSP container에 보냄</div>
</span>
<span>
	<div><b>Action tag</b></div>
	<div>XML 형태의 tag, JSP페이지 사이에서 제어 이동</div>
</span>
<center><b>
<%! int count = 1; %>
<%
	for(count=1; count<=5;count++){
		out.println(count + "<br>");
		}
	
%>
</b>
</center>
</body>
</html>