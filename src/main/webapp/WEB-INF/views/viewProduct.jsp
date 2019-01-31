<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@include file="header.jsp" %>

	<div class="container" ng-app = "cartApp">
		<div class="row">
			<div class="col-md-6">
			<h1>Product Details</h1>
				<img alt="No Image Found" src="<c:url value="/resources/images/${product.productId}.png"/>">
			</div>
			<div class="col-md-6">
				<h3>PRODUCT NAME: ${product.productName}</h3>
				<h3>DESCRIPTION: ${product.description}</h3>
				<h3>PRICE: ${product.price}</h3>
				<h3>QUANTITY: ${product.quantity}</h3>
				<h3>CATEGORY: ${product.category}</h3>
			</div>
			
			<br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/allproducts" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productManagement" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                        <span class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>
                        <a href="<spring:url value="/cart"/>">
                        <span class="glyphicon glyphicon-hand-right">
                        </span>View Cart</a>
                    </p>



			
			  <a href="<c:url value="/customer/cart"/>" class="btn btn-info" >Add to Cart</a>
			  <a href="<c:url value="/allProducts" />" class="btn btn-info">Continue Shopping</a>
			  
		</div>
		</div>
		
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
<%@include file="footer.jsp" %>
