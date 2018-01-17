<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Update</title>
</head>
<body>
	<h2 align="center">Welcome Update</h2>
	<div align="center">
		<form action="updateFetch.html" method="post">
			<h3 align="center">
				Enter Id of the User : <input type="text" name="id" /> <input
					type="submit" value="Submit">
			</h3>
		</form>

		<form action="register.html" method="post"
			name="user">
			<div align="center" id=user_table>
				<table align="center">
					<tr>
						<td>Id</td>
						<td><input type="text" name="id" value="${user.id }"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name" value="${user.name }"></td>
					</tr>
					<tr>
						<td>Father's Name</td>
						<td><input type="text" name="fname" value="${user.fname }"></td>
					</tr>
					<tr>
						<td>Mother's Name</td>
						<td><input type="text" name="mname" value="${user.mname }"></td>
					</tr>
					<tr>
						<td>Phone</td>
						<td><input type="text" name="phone" value="${user.phone }"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" value="${user.email }"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address"
							value="${user.address }"></td>
					</tr>
					<tr>
						<td>Aadhar Number</td>
						<td><input type="text" name="aadhar" value="${user.aadhar }"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="UPDATE" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	
	

</body>
</html>