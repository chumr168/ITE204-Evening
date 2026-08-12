<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"> 

<meta charset="UTF-8">
<title>Redirect</title>
</head>
<body>
<c:import url="navigation.jsp" />

<h1>URL PAGE</h1>
<c:url var="myurl" value="import.jsp">
	<c:param name="userid" value="3000" />
	<c:param name="gender" value="female" />
	<c:param name="academicyear" value="2025" />
</c:url>
<a href="${myurl}">Go to import page</a>
</body>
</html>