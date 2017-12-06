<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.error {
	background-color: red;
	color: white
}
</style>
<title>Insert title here</title>
</head>
<body>
	<f:form action="add" method="post" modelAttribute="gym">
		<div>
			<f:errors path="*" cssClass="error" />
		</div>
		<div>
			Name:
			<f:input class="form-control" path="name" />
			<f:errors path="name" cssClass="error" />
		</div>
		<div>
			Style:
			<f:select class="form-control" path="style.id" items="${styles}" itemLabel="name"
				itemValue="id" />
			<f:errors path="style" cssClass="error" />
		</div>
		<div>
			Headcoach:
			<f:input class="form-control" path="headcoach" />
			<f:errors path="headcoach" cssClass="error" />
		</div>
		<div>
			Region:
			<f:select class="form-control" path="region.id" items="${regions}" itemLabel="name"
				itemValue="id" />
			<f:errors path="region" cssClass="error" />
		</div>
		<div>
			City:
			<f:select class="form-control" path="city.id" items="${cities}" itemLabel="name"
				itemValue="id" />
			<f:errors path="city" cssClass="error" />
		</div>
		
		<div>
			Email:
			<f:input class="form-control" path="email" />
			<f:errors path="email" cssClass="error" />
		</div>
		<div>
			Address:
			<f:input class="form-control" path="address" />
			<f:errors path="address" cssClass="error" />
		</div>
		<div>
			Tel:
			<f:input class="form-control" path="tel" />
			<f:errors path="tel" cssClass="error" />
		</div>
		<div>
			<input type="submit" value="Add gym" /></br>
		</div>
		<div>
			<f:hidden path="id" />
		</div>
		<a href="../menu">go back to menu</a>
	</f:form>

</body>
</html>