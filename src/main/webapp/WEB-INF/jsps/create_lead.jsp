<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create</title>
</head>
<body>
<h2>Create | Lead</h2>
<form action="saveLead"method="post">
<pre>
FirstName<input type="text"name="firstName"/>
lastName<input type="text"name="lastName"/>
Email<input type="text"name="email"/>
Mobile<input type="number"name="mobile"/>
Source:
<select name="Source">
  <option value="news paper">News Paper</option>
  <option value="tv commercial">TV commercial</option>
  <option value="online">Online</option>
  <option value="seminar">Seminar</option>
</select>
<input type="submit" value="save">
</pre>
</form>
</body>
</html>