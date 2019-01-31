<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View All Products</title>
</head>
<body>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>All Products</h2></caption>
            <tr>
              
                <th>ProductName</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Description</th>
                <th><a href="./productdetails"></a>Details</th>
            </tr>
            <c:forEach var="product" items="${allProducts}">
                <tr>
                  
                    <td><c:out value="${product.productName}" /></td>
                    <td><c:out value="${product.price}" /></td>
                    <td><c:out value="${product.quantity}" /></td>
                    <td><c:out value="${product.description}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>