<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
color:white
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="panel panel-default">
  <div class="panel-body">A Basic Panel</div>
</div>
  <f:form action="add" method="post" modelAttribute="region">
  
    <div>
    	<f:errors path="*" cssClass="error"/>
    </div>
    
    <div>
      Name: <f:input path="name"/><f:errors path="name" cssClass="error"/>
    </div>

    <div>
      <input type="submit" value="add region"/></br>
    </div>
    <a href="../menu">go back to menu</a>
  </f:form>
</body>
</html>