<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      background-color: black;
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

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">PlaySoul</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="./index">Home</a></li>
        <li><a href="./aboutus">About Us</a></li>
        
        <li><a href="./contactUs">Contact Us</a></li>
         <li><a href="allproducts">All Products</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        
<li><a href="./signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="./signin"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>      
</ul>
    </div>
  </div>
</nav>

<h2>Welcome Ms. ${productname }</h2>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src=".\resources\images\7.jpg">
        <div class="carousel-caption">
          <h3> </h3>
      
        </div>      
      </div>

      <div class="item">
        <img src=".\resources\images\19.jpg">
        <div class="carousel-caption">
          <h3> </h3>
          
        </div>      
      </div>

<div class="item">
        <img src=".\resources\images\22.jpg">
        <div class="carousel-caption">
          <h3> </h3>
          
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>What We Do</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src=".\resources\images\12.jpg" class="img-responsive" style="width:100%">
      <p>Guitar</p>
    </div>
    <div class="col-sm-4"> 
      <img src=".\resources\images\10.jpg" class="img-responsive" style="width:100%">
      <p>Drums Set</p>    
    </div>
    <div class="col-sm-4"> 
      <img src=".\resources\images\1.jpg" class="img-responsive" style="width:100%">
      <p>ManyMores</p>    
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>© All right reserved                                               <a href="#">Privacy</a>                     <a href="#">Terms</a></p>
</footer>

</body>
</html>
    