<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<title>Shopping Cart</title>
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
  }
  h5{text-align: center;
  font-style: italic;
  font-size: 20px;
  text-decoration: ;
  
  color: black;}
  

  p {
    text-align: right;
}
  
  </style>
</head>
<body background="" ng-app="myApp">

 <body>

<nav class="navbar navbar-inverse ">

  <div class="container-fluid">
    <div class="navbar-header">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home"><p>Home<span class="glyphicon glyphicon-home"></span></p></a></li>
      
  <!--  <div class="col-sm-6 col-sm-offset-0">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div> 
         </div>
         </div> --> 
        
           
 
	  
    <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart" ><p>Cart <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>Logout<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">Welcome<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
 <sec:authorize access="!isAuthenticated()">
			
			 <li><a href="Registration"><p>Register<span class="glyphicon glyphicon-user"></span></p></a></li>
	  <li><a href="Login"><p>Login<span class="glyphicon glyphicon-log-in"></span></p></a></li>
					</sec:authorize>  
					
      
    </ul>         
    
  
</nav>
<h5> F@SiOn-$TOrE <span class="glyphicon glyphicon-shopping-cart"></span></h5><br>
${message}  <br>
<div class="ng-view"></div>
<script>
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/",{
    	templateUrl : "Home"
    })
     .when("/Login",{
    	templateUrl : "Login"
    })
    .when("/Registration",{
        templateUrl : "Registration"
    });
});
</script>
<c:choose>
<c:when test="${UserClickedlogin}">
<c:import url="/WEB-INF/view/Login.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickeduser}">
<c:import url="/WEB-INF/view/Registration.jsp"></c:import>
</c:when>
</c:choose>  
  
<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
     <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://g02.a.alicdn.com/kf/HTB11FtyIpXXXXatXpXXq6xXFXXXo/New-font-b-pink-b-font-for-font-b-apple-b-font-laptop-font-b-computer.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="http://cdn.ndtv.com/tech/images/gadgets/xiaomi_redmi_note_3.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="http://cdn.pcwallart.com/images/fashion-clothes-wallpaper-3.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="http://www.homestructions.com/wp-content/uploads/2013/03/iStock_000020998821Small.jpg" alt="Flower" width="460" height="345">
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
  </div></c:if>
		</c:when>
	</c:choose>
  <br>
 
	 <c:forEach items="${productList}" var="product">
	 <div class="responsive">
	 <div class="img">
 		
 		
 		  <!-- <div class="thumbnail">-->
 			 <div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="200px"
							width="200px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
 	       
 	        <div class="desc">
         	<c:out value="${product.name}" />
         	<sec:authorize access="isAuthenticated()">
			<c:url var="action" value="addtocart/${product.id}"></c:url>
			<form:form action="${action}" commandName="cart">
			<input type="submit" class="btn btn-primary" value="Add To Cart" />
			
			</form:form>
			</sec:authorize>
			</div>
			</div>
			</div>
			</div>
			</c:forEach>
									
							
							
			

		
	<div ng-view></div>

	<script>
		$(document).ready(function() {
			$('.dropdown a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>
	
	<c:choose>
		<c:when test="${UserClickedadmin}">
			<c:import url="/WEB-INF/view/Admin.jsp"></c:import>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${Clickedshowproduct}">
			<c:import url="/WEB-INF/view/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${Clickedcatproduct}">
			<c:import url="/WEB-INF/view/catproducts.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${UserClickedCart}">
	<c:import url="/WEB-INF/view/Cart.jsp"></c:import>
	</c:when>
</c:choose>
<c:choose>
	<c:when test="${IfPaymentClicked}">
	<c:import url="/WEB-INF/view/Payment.jsp"></c:import>
	</c:when>
</c:choose>
<c:choose>
			<c:when test="${!Administrator}">
				<br>
						<div class="row w3-card-8 w3-margin" style="margin-bottom: 0px">
							
													
						</div>
						
					</div>
				
			</c:when>
		</c:choose>
	</nav>
<footer>
<div style="background: Lavender">

 <c:choose>
 <c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
	<table class="table">
		<thead>
			<tr>
				<th>OUR COMPANY</th>
				<th>TOP CATEGORIES</th>
				<th>POLICIES AND INFO</th>
			</tr>
		</thead>
		<tbody>

			<tr>

				<td>About us<br>F@SiOn-$TOrE  in Media<br> Ethnico<br>
					Place of Origin<br> Blog<br></td>

				<td>Sarees<br> Laptop<br> camera<br>
					mobile<br> Toys<br></td>
				<td>Terms & Conditions<br> Policy for Sellers<br>
					Policy for Buyers<br> Shipping & Refund Policies<br>
					Wholesale Policy<br> Privacy Policy<br></td>
			</tr>
			<tr>
				<th>SUPPORT</th>
				<th>PAYMENT OPTIONS</th>
				<th>STAY CONNECTED</th>
			</tr>
			
			
			<tr>
			<td><i class="fa fa-envelope" style="font-size: 30px;"></i>
			
					<a href="mailto:supportproduct@company.com">supportproduct@F@SiOn-$TOrE.com</a><br>
					<i class="fa fa-phone" style="font-size: 30px; "></i>
				<a>+91 8500822269</a>
				<i class="fa fa-map-marker" style="font-size: 30px; color:"></i>
				<a>
					 Banjara hills road no.11 India</a>
				</td>
				<td><div class="footer-icons">
				<a href="#"><i class="fa fa-facebook-official"style="font-size: 30px; "></i> </a>
				<a href="#"><i class="fa fa-twitter" style="font-size: 30px; "></i></a>
				<a href="#"><i class="fa fa-google" style="font-size: 30px; "></i></a>
						<a href="#"><i class="fa fa-whatsapp" style="font-size: 30px; "></i></a>
						<a href="#"><i class="fa fa-github"style="font-size: 30px; "></i></a>
			</div></td>
			<td>
				<a href="#"><i class="fa fa-cc-mastercard" aria-hidden="true" style="font-size: 30px; "></i>
			</a> . <a href="#"><i class="fa fa-cc-visa" aria-hidden="true" style="font-size: 30px;"></i> </a>
			. <a href="#"><i class="fa fa-credit-card" aria-hidden="true" style="font-size: 30px; "></i>
			</a></td>	
			</tr>
				
			</tbody>
			
	</table>
</c:if></c:when></c:choose></div>
</footer>
  </body>
</html>