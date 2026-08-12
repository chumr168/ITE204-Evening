<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"> 

<style>

body{
color: white;
}
</style>
<meta charset="UTF-8">
<title>forEach</title>
</head>
<body>

<%@ include file="navigation.jsp" %>


<!-- 
<c:forEach var="i" begin="1" end="10" step="1" varStatus="status">

	<p>value: ${i } first?: ${status.last }</p>
	<p>Step: ${status.step}</p>

</c:forEach>

-->


<!-- example -->


<c:set var="rawNames" value="Alice Smith Bob Jones Charlie Brown Diana Prince" />
    <c:set var="userList" value="${fn:split(rawNames, ' ')}" />

    <%-- 2. Loop through the generated array natively --%>
    <h2>User List (Pure JSTL Split)</h2>
    <table>
        <c:forEach var="name" items="${userList}" varStatus="status">
            <tr style="background-color: ${status.index % 2 == 0 ? 'red' : 'blue'}">
                <td>${status.index} - ${status.count}</td>
                <td><c:out value="${name}" /></td>
                <td>
                    <c:if test="${status.first}">First</c:if>
                    <c:if test="${status.last}">Last</c:if>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>