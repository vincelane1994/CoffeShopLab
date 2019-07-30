<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<ul class="ulnav">
      <li class="linav"><a class="lianav" href="/registration">Sign Up</a></li>
      <li class="linav"><a class="lianav" href="/list">Products</a></li>
    </ul>
	<h1>Welcome ${user.firstName}</h1>
</body>
</html>