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
 <h2>List all Leads Here...</h2>
     
     <table>
           <tr>
               <th>ID</th>
                 <th>FIRST NAME</th>
                 <th>LAST NAME</th>
                 <th>EMAIL</th>
                 <th>MOBILE</th>
                 <th>DELETE</th>
                 <th>UPDATE</th>
           </tr>
           
          <c:forEach var="lead" items="${leads}">
                <tr>
                    <td>${lead.id }</td>
		            <td>${lead.firstName}</td>
		            <td>${lead.lastName}</td>
		            <td>${lead.email}</td>
		            <td>${lead.mobile}</td>
		            
		            <td><a href="DeleteByid?id=${lead.id}">Delete</a></td>
		             <td><a href="Update?id=${lead.id}">Update</a></td>
		        </tr>
           </c:forEach>
             </table>
</body>
</html>