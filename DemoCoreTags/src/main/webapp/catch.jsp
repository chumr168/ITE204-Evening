<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:import url="navigation.jsp" />

<c:catch var="error">
	<%= 5/0 %>
</c:catch>
<c:if test="${not empty error}">
	<p>Error message: ${error.message}</p>
</c:if>

</body>
</html>