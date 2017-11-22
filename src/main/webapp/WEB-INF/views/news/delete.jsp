<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</style>
</head>
<body>
	<f:form action="" method="delete" modelAttribute="news">
		<p>Are you sure you want to delete gym ${news.title}?</p>
		<div>
			<input type="submit" value="confirm">
		</div>
		<div>
			<f:hidden path="id" />
		</div>
	</f:form>
</body>
</html>