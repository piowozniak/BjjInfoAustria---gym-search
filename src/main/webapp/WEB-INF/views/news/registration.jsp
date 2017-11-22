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
  <f:form action="" method="post" modelAttribute="news">
    <div>
    	<f:errors path="*" cssClass="error"/>
    </div>
    <div>
      Title: <f:input path="title"/><f:errors path="title" cssClass="error"/>
    </div>
    <div>
      Text: <f:textarea path="text" col="30" rows="4"/><f:errors path="text" cssClass="error"/>
    </div>
    <div>
      Writer: <f:select path="writer.id" items="${writers}" itemLabel="firstName" itemValue="id"/><f:errors path="writer" cssClass="error"/>
    </div>
   
    <div>
      <input type="submit" value="add post"/></br>
    </div>
    <a href="list">GO BACK TO GYM MENU</a>
  </f:form>
</body>
</html>