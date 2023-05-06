<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All</title>
</head>
<body>

<h2>List All Leads</h2>

<table>

		<tr>
				<th>FirstName</th>
				<th>lastName</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Source</th>
		</tr>
		
 <c:forEach var="l" items="${l}">
		<tr>
			<td>${l.firstName }</td>
			<td>${l.lastName}</td>
			 <td>${l.email}</td>
			 <td>${l.mobile}</td>
			 <td>${l.source}</td>
		 </tr>
</c:forEach>
</table>
</body>
</html>