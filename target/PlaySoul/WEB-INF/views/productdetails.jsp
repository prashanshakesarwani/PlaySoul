<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
</head>
<body>
<c:if test="${not empty lists}">

		<ul>
			<c:forEach var="Details" items="${detail}">
				<li>${details}</li>
			</c:forEach>
		</ul>

	</c:if>
</body>
</html>