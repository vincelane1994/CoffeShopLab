<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rooms</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<ul class="ulnav">
      <li class="linav"><a class="lianav" href="/registration">Sign Up</a></li>
      <li class="linav"><a class="lianav" href="/list">Products</a></li>
    </ul>
	<div class="container">
		<h1>Products at Grand Circus Coffee Shop</h1>
		<h2>Add a product</h2>
		<form action="/product/add" method="post">
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name" autofocus/></td>
			</tr>
			<tr>
				<th scope="row">Price</th>
				<td><input type="number" name="price" min="0" step="0.01" /></td>
			</tr>
			<tr>
				<th scope="row">Description</th>
				<td>
					<input type="text" name="description"/>
				</td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary" href="/">Add</button>
		<a class="btn link" href="/">Cancel</a>
		</form>
	</div>
</body>
</html>