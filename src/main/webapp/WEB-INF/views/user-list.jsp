<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Users</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<link href="/temp.css" rel="stylesheet" /> 
</head>
<body>
	<ul class="ulnav">
      <li class="linav"><a class="lianav" href="/registration">Sign Up</a></li>
      <li class="linav"><a class="lianav" href="/list">Products</a></li>
    </ul>
	<div class="container">
		<h1>Users of Grand Circus Coffee Shop</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Age</th><th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="users" items="${users}">
				<tr>
					<td><a href="/user/detail?id=${users.id}">${users.firstName} ${users.lastName}</a></td>
					<td>${users.age}</td>
					<td>${users.email}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/user/add" class="btn btn-secondary">Add User</a>
		<a class="btn link" href="/">Cancel</a>
	</div>
</body>
</html>