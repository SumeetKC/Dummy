<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body>
	<h2 align="center">View Student details</h2>
	<div align="center">
		<form action="view.html" method="post">
			<h3 align="center">
				Enter Id of the User : <input type="text" name="id" /> <input
					type="submit" value="Submit">
			</h3>
		</form>
	</div>

	<div align="center">
		<table align="center" border="2px" cellpadding="2" cellspacing="2">
			<tr>
				<td>Id</td>
				<td>${user.id }</td>
			</tr>
			<tr>
				<td>Name</td>
				<td>${user.name }</td>
			</tr>
			<tr>
				<td>Father's Name</td>
				<td>${user.fname }</td>
			</tr>
			<tr>
				<td>Mother's Name</td>
				<td>${user.mname }</td>
			</tr>
			<tr>
				<td>Phone</td>
				<td>${user.phone }</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>${user.email }</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${user.address }</td>
			</tr>
			<tr>
				<td>Aadhar Number</td>
				<td>${user.aadhar }</td>
			</tr>
		</table>
	</div>
</body>
</html>