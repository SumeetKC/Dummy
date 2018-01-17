<%@page import="org.springframework.ui.ModelMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script	src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<div id="maindiv">
		<h2 align="center">Registration form</h2>
		<form action="register.html" method="post" id="registerForm"
			name="user">
			<div align="center" id=user_table>
				<table align="center">
					<tr>
						<td>Id</td>
						<td><input type="text" name="id" placeholder="Enter Your Id"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"
							placeholder="Enter Your Name"></td>
					</tr>
					<tr>
						<td>Father's Name</td>
						<td><input type="text" name="fname"
							placeholder="Enter Your Father Name"></td>
					</tr>
					<tr>
						<td>Mother's Name</td>
						<td><input type="text" name="mname"
							placeholder="Enter Your Mother Name"></td>
					</tr>
					<tr>
						<td>Phone</td>
						<td><input type="text" name="phone"
							placeholder="Enter Your Mobile"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email"
							placeholder="Enter Your Email"></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address"
							placeholder="Enter Your Address"></td>
					</tr>
					<tr>
						<td>Aadhar Number</td>
						<td><input type="text" name="aadhar"
							placeholder="Enter Your Aadhar"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="ADD" /></td>
					</tr>
				</table>
			</div>
		</form>
		<table cellspacing="2" cellpadding="2" align="center">
			<tr>
				<td><a href="WelcomeUpdate.html">UPDATE</a></td>
				<td><a href="WelcomeDelete.html">DELETE</a></td>
				<td><a href="WelcomeView.html">VIEW</a></td>
				<td><a href="viewall.html">LIST OF USERS</a></td>
			</tr>
		</table>


	</div>

</body>
</html>