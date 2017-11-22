<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<h2>GYM LIST</h2>
<table>
	<tr>
		<th>id</th>
		<th>First name</th>
		<th>Last name</th>
		<th>Email</th>
		
		
	</tr>
	<c:forEach items="${writers}" var="writer">
		<tr>
			<td>${writer.id}</td>
			<td>${writer.firstName}</td>
			<td>${writer.lastName}</td>
			<td>${writer.email}</td>
				
			<td><a href="edit?id=${writer.id}">edit writer</a></td>
			<td><a href="delete?id=${writer.id}">delete writer</a></td>
		</tr>
	</c:forEach>
</table>
<a href="add">add new writer</a><br>
<a href="/bookstore/menu">GO BACK TO GYM MENU</a>

</body>
</html>