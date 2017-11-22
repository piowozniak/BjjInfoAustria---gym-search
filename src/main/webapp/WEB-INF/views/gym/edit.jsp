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

	<f:form action="edit" method="post" modelAttribute="gym">
		<div>
			<f:errors path="*" cssClass="error" />
		</div>
		<div>
			Name:
			<f:input path="name" />
			<f:errors path="name" cssClass="error" />
		</div>
		<div>
			Style:
			<f:select path="style.id" items="${styles}" itemLabel="name"
				itemValue="id" />
			<f:errors path="style" cssClass="error" />
		</div>
		<div>
			Headcoach:
			<f:input path="headcoach" />
			<f:errors path="headcoach" cssClass="error" />
		</div>
		<div>
			City:
			<f:select path="city.id" items="${cities}" itemLabel="name"
				itemValue="id" />
			<f:errors path="city" cssClass="error" />
		</div>
		<div>
			Region:
			<f:input path="region" />
			<f:errors path="region" cssClass="error" />
		</div>
		<div>
			Email:
			<f:input path="email" />
			<f:errors path="email" cssClass="error" />
		</div>
		<div>
			Address:
			<f:input path="address" />
			<f:errors path="address" cssClass="error" />
		</div>
		<div>
			Tel:
			<f:input path="tel" />
			<f:errors path="tel" cssClass="error" />
		</div>
		<div>
			<input type="submit" value="Add gym" /></br>
		</div>
		<div>
			<f:hidden path="id" />
		</div>
		<a href="../">go back to homepage</a>
	</f:form>

</body>
</html>