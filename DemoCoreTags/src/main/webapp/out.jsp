<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"> 

<meta charset="UTF-8">
<title>OUt Tag</title>
</head>
<body>
<%@ include file="navigation.jsp" %>

<c:out value="${lastName}" default="there is no value" />
<br>
<!-- example of using escape xml -->
<c:out value="<h1>Hello world!</h1><script>alert('XSS attacks');</script>" escapeXml="false"/>
</body>
</html>