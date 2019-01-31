<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>View All Products</title>
</head>
<body>
     
    <div class="container">
	  <div class="table-responsive">          
  		<table class="table table-bordered">
            <caption><h2>All Products</h2></caption>
            <thead>
            <tr>
              
                <th>ProductName</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Description</th>
                <th>Category</th>
                <th>Image</th>
                <th>Details</th>
            </tr>
            </thead>
            <c:forEach var="product" items="${allProducts}">
            <tbody>
                <tr>
                  
                    <td><c:out value="${product.productName}" /></td>
                    <td><c:out value="${product.price}" /></td>
                    <td><c:out value="${product.quantity}" /></td>
                    <td><c:out value="${product.description}" /></td>
                    <td><c:out value="${product.category}" /></td>
                    <td><img alt="No Image Found" 
                    src="<c:url value="/resources/images/${product.productId}.png" />" class="img-responsive" width="200px" height="200px"/></td>
                    <td><a href="<c:url value="viewProduct/${product.productId}"/>" class="btn btn-info">view more</a></td>
              
             <security:authorize access="hasRole('ROLE_ADMIN')">
               		
               	<td><a href="<c:url value="/admin/updateProduct/${product.productId}"/>" class="btn btn-success">Update</a></td>
                <td><a href="<c:url value="/admin/deleteProduct/${product.productId}"/>" class="btn btn-danger">Delete</a>
                   </td>
               
             </security:authorize>	
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
   </div>
</body>
 <%@include file="footer.jsp" %>
</html>