<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:redirect url="import.jsp">
	<c:param name="userid" value="2002" />
	<c:param name="gender" value="male" />
	<c:param name="academicyear" value="2020" />
</c:redirect>

</body>
</html>