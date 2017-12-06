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

	<f:form action="edit" method="post" modelAttribute="region">
		<div>
			<f:errors path="*" cssClass="error" />
		</div>

		<div>
			Name:
			<f:input path="name" />
			<f:errors path="name" cssClass="error"></f:errors>
		</div>


		<div>
			<f:hidden path="id" />
		</div>
		<div>
			<input type="submit" value="save edit">
		</div>
		<a href="../menu">go back to menu</a>
	</f:form>


</body>
</html>