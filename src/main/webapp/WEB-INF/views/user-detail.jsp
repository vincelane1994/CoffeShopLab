<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Grand Circus Coffee Shop Member</h1>
		<table class="table">
			<tr>
				<th scope="row">First Name</th>
				<td>${user.firstName}</td>
			</tr>
			<tr>
				<th scope="row">Last Name</th>
				<td>${user.lastName}</td>
			</tr>
			<tr>
				<th scope="row">Age</th>
				<td>${user.age}</td>
			</tr>
			<tr>
				<th scope="row">Email</th>
				<td>${user.email}</td>
			</tr>
			<tr>
				<th scope="row">Member Since</th>
				<td>${user.memberSince}</td>
			</tr>
		</table>
		<a class="btn btn-secondary" href="/user/edit?id=${users.id}">Edit</a>
		<a class="btn btn-danger" href="/user/delete?id=${users.id}">Delete</a>
		<a class="btn link" href="/user-list">Back to List</a>
	</div>
</body>
</html>