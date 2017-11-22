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
  <f:form action="add" method="post" modelAttribute="style">
    <div>
    	<f:errors path="*" cssClass="error"/>
    </div>
    
    <div>
      Name: <f:input path="name"/><f:errors path="name" cssClass="error"/>
    </div>

    <div>
      <input type="submit" value="add martial art"/></br>
    </div>
    <a href="../">go back to homepage</a>
  </f:form>
</body>
</html>