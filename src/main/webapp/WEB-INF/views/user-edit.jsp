<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Users</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Grand Circus Coffee Shop Member</h1>
		<form action="/rooms/edit" method="post">
		<input type="hidden" name="id" value="${user.id}" />
		<table class="table">
			<tr>
				<th scope="row">First Name</th>
				<td><input type="text" name="firstName" value="${user.firstName}" /></td>
			</tr>
			<tr>
				<th scope="row">Last Name</th>
				<td><input type="text" name="lastName" value="${user.lastName}" /></td>
			</tr>
			<tr>
				<th scope="row">Age</th>
				<td><input type="number" name="age" value="${user.age}" /></td>
			</tr>
			<tr>
				<th scope="row">Email</th>
				<td><input type="text" name="email" value="${user.email}" /></td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary">Save Changes</button>
		<a class="btn link" href="/user/detail?id=${user.id}">Cancel</a>
		</form>
	</div>
</body>
</html>