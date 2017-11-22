<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.error {
background-color: red;
color:white
}
</style>
<title>Insert title here</title>
</head>
<body>
  <f:form action="add" method="post" modelAttribute="writer">
    <div>
    	<f:errors path="*" cssClass="error"/>
    </div>
    <div>
      First name: <f:input path="firstName"/><f:errors path="firstName" cssClass="error"/>
    </div>    
    <div>
      Last name: <f:input path="lastName"/><f:errors path="lastName" cssClass="error"/>
    </div>
   
    <div>
      Email: <f:input path="email"/><f:errors path="email" cssClass="error"/>
    </div>
    <div>
      <input type="submit" value="add gym"/></br>
    </div>
    <a href="/bookstore/menu">GO BACK TO GYM MENU</a>
  </f:form>
</body>
</html>