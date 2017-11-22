<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<h2>LIST OF MARTIAL ARTS</h2>
<table>
	<tr>
		<th>id</th>
		<th>name</th>
		
		
	</tr>
	<c:forEach items="${styles}" var="style">
		<tr>
			<td>${style.id}</td>
			<td>${style.name}</td>
		
		
			<td><a href="edit?id=${style.id}">edit book</a></td>
			<td><a href="delete?id=${style.id}">delete book</a></td>
		</tr>
	</c:forEach>
</table>
<a href="add">add new style</a><br>
<a href="../">go back to homepage</a>

</body>
</html>