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

	<f:form action="edit" method="post" modelAttribute="news">
		<div>
			<f:errors path="*" cssClass="error" />
		</div>
		<div>
			Title:
			<f:input path="title" />
			<f:errors path="title" cssClass="error" />
		</div>
		<div>
			Text:
			<f:textarea path="text" col="30" rows="4" />
			<f:errors path="text" cssClass="error" />
		</div>
		<div>
			Writer:
			<f:select path="writer.id" items="${writer}" itemLabel="firstName"
				itemValue="id" />
			<f:errors path="writer" cssClass="error" />
		</div>

		<div>
			<input type="submit" value="confirm changes" /></br>
		</div>
		<div>
			<f:hidden path="id" />
		</div>
		<a href="/bookstore/menu">GO BACK TO GYM MENU</a>
	</f:form>
</body>
</html>