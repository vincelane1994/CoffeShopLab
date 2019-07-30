<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/temp.css" rel="stylesheet" /> 
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<ul class="ulnav">
      <li class="linav"><a class="lianav" href="/registration">Sign Up</a></li>
      <li class="linav"><a class="lianav" href="/list">Products</a></li>
    </ul>
	<div class="container">
		<h1>Products at Grand Circus Coffee Shop</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Product</th><th>Price</th><th>Description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
				<tr>
					<td><a href="/product/detail?id=${product.id}">${product.name}</a></td>
					<td>${product.price}</td>
					<td>${product.description}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/product/add" class="btn btn-secondary">Add Product</a>
		<a class="btn link" href="/">Cancel</a>
	</div>
</body>
</html>