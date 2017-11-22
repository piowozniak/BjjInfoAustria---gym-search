<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<h2>USER LIST</h2>
<table>
	<tr>
		<th>id</th>
		<th>first name</th>
		<th>last name</th>
		<th>email</th>
		
	</tr>
	<c:forEach items="${users}" var="user">
		<tr>
			<td>${user.id}</td>
			<td>${user.firstName}</td>
			<td>${user.lastName}</td>
			<td>${user.email}</td>
		
			<td><a href="edit?id=${user.id}">edit book</a></td>
			<td><a href="delete?id=${user.id}">delete book</a></td>
		</tr>
	</c:forEach>
</table>
<a href="add">add new user</a><br>
<a href="../index.jsp">go back to homepage</a>

</body>
</html>