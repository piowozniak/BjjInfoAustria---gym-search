<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.error {
	background-color: red;
	color: white
}
</style>
<title>Insert title here</title>
</head>
<body>

	<f:form action="find/citylist" method="get" modelAttribute="gym">
	
			<f:select path="city.id" items="${cities}" itemLabel="name"
				itemValue="id" />
			<f:errors path="city" cssClass="error" />

		<div>
			<input type="submit" value="search" /></br>
		</div>
		<div>
			<f:hidden path="id" />
		</div>

	</f:form>

</body>
</html>