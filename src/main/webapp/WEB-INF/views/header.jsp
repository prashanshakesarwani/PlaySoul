
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Music Hub</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color:#000000 ;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>
<header>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="">PlaySoul</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./index">Home</a></li>
        <li><a href="./aboutus">About Us</a></li>
        
        <li><a href="./contactUs">Contact Us</a></li>
         <li><a href="<c:url value="allProducts"/>">All Products</a></li>
         <security:authorize access="hasRole('ROLE_ADMIN')">
         <li><a href="<c:url value="/admin/addProduct"/>">Add Product</a></li>
         </security:authorize>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<li class="navbar-brand">Welcome: ${pageContext.request.userPrincipal.name}</li>
				<li><a href="<c:url value="/perform_logout" />">Logout</a></li>

				<security:authorize access="hasRole('ROLE_USER')">
					<li><a href="<c:url value="/user/home" />">Cart</a></li>
				</security:authorize>

				<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value="/admin/home" />">Admin</a></li>
				</security:authorize>

			</c:if>

        <c:if test="${pageContext.request.userPrincipal.name == null}">
        <ul class="nav navbar-nav navbar-right">
		<li><a href="./register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="./login"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>  
        </ul>
        </c:if>  
        
</ul>
    </div>  
    </div>
</nav>
</header>