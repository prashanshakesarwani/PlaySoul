<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


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

<%@include file="footer.jsp" %>

    