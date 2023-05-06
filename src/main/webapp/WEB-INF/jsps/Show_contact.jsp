<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <table>
           <tr>
               <th>ID</th>
              <th>FirstName</th>
				<th>lastName</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Source</th>
				<th>Billing</th>
           </tr>
           
           <c:forEach var="con" items="${c}">
           
          <tr>
            <td>${con.id }</td>
			<td>${con.firstName }</td>
			<td>${con.lastName}</td>
			 <td>${con.email}</td>
			 <td>${con.mobile}</td>
			 <td>${con.source}</td>
			  <td><a href="generateBill?id=${con.id}">generate bill</a></td>
		 </tr>
                
           </c:forEach>
     </table>
</body>
</html>