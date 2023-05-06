<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All</title>
</head>
<body>
<a href="root">Create Lead Page</a>
<h2>List All Leads</h2>

<table>

		<tr>
		        <th>ID</th>
				<th>FirstName</th>
				<th>lastName</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Source</th>
		</tr>
		
 <c:forEach var="lead" items="${l}">
		<tr> <td>${lead.id }</td>
			<td>${lead.firstName }</td>
			<td>${lead.lastName}</td>
			 <td>${lead.email}</td>
			 <td>${lead.mobile}</td>
			 <td>${lead.source}</td>
		 </tr>
</c:forEach>
</table>
</body>
</html>