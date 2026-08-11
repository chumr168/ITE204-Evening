<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="d" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Tag</title>
</head>
<body>

<!-- set core tag -->
<d:set var="lastName" value="Pich" scope="session" />

<!-- expression language -->
<a href="remove.jsp" ><b>${lastName}</b></a>
</body>
</html>