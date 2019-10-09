<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dto.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumborton">
		<div class="container">
			<h1 class="display-3" align="center">상품 목록</h1>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts=productDAO.getAllProduct();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0;i<listOfProducts.size();i++){
					Product product = listOfProducts.get(i);
				
			%>
			<div class="col-md-4">
				<h3><%=product.getPname() %></h3>
				<img alt="productimg" src="<%=product.getImgUrl()%>" width="350">
				<p class="font-weight-bolder"><%=product.getDescription() %>
				<p class="badge badge-primary text-wrap" style="width: 6rem;"><%=product.getUnitPrice() %>원
			</div>
			<%
				}
			%>
		</div>
	</div>
	<%@include file="footer.jsp"%>


</body>
</html>