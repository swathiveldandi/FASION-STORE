<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<title>Shopping Cart</title>
</head>
<body background="C:\Users\Public\Pictures\Sample Pictures\Tulips.jpg" ng-app="myApp"> 
<h2>Welcome to shopping cart</h2>

${message}  <br>
 
<a href="Login" >Login Here</a>
<a href="Registration" >Register Here</a>
<a href="Supplier" >Supplier</a>
<a href="Product" >Product</a>
<a href="Category" >Category</a>
<hr color ="blue">

<%-- <c:if test="${userClickedRegisterHere} ==true">
<jsp:include page="Registration.jsp"></jsp:include>
</c:if> --%>


<!--<c:if test="${userClickedLoginHere} ==true">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>-->

 <c:choose>
<c:when test="${UserClickedsupplier}">
<c:import url="/WEB-INF/view/Supplier.jsp"></c:import>
</c:when>
</c:choose>
 
<c:choose>
<c:when test="${UserClickedcategory} ">
<c:import url="/WEB-INF/view/Category.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickedproduct} ">
<c:import url="/WEB-INF/view/Product.jsp"></c:import>
</c:when>
</c:choose>  
 <div class="ng-view"></div>
<script>
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "Home",
    })
    .when("/Supplier", {
        templateUrl : "Supplier",
    })
    .when("/Category", {
        templateUrl : "Category",
    })
    .when("/Product", {
        templateUrl : "Product",
    });
});
</script>

</body>
</html>
