<%@page import="java.util.Iterator"%>
<%@page import="dummy.user.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All</title>
</head>
<body>
	<h2 align="center">View All Users</h2>
	<table align="center" cellpadding="2" cellspacing="2" border="2">
		<%
			List<User> list = (List<User>) request.getAttribute("user");
			Iterator<User> iterator = list.iterator();
			while (iterator.hasNext()) {
				User user = iterator.next();
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getName()%></td>
			<td><%=user.getFname()%></td>
			<td><%=user.getMname()%></td>
			<td><%=user.getPhone()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getAddress()%></td>
			<td><%=user.getAadhar()%></td>

		</tr>

		<%
			}
		%>

	</table>

</body>
</html>