<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
.error {
	background-color: red;
	color: white
}
</style>
</head>
<body>

	<f:form action="edit" method="post" modelAttribute="writer">
		<div>
			<f:errors path="*" cssClass="error" />
		</div>
		<div>
			First name:
			<f:input path="firstName" />
			<f:errors path="firstName" cssClass="error" />
		</div>
		<div>
			Last name:
			<f:input path="lastName" />
			<f:errors path="lastName" cssClass="error" />
		</div>

		<div>
			Email:
			<f:input path="email" />
			<f:errors path="email" cssClass="error" />
		</div>
		<div>
			<input type="submit" value="Add changes" /></br>
		</div>
		<div>
			<f:hidden path="id" />
		</div>
		<a href="/bookstore/menu">GO BACK TO MENU</a>
	</f:form>

</body>
</html>