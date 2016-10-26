<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
          <span class="glyphicon glyphicon-home"></span>
        </a>
    </div>
    
    <ul class="nav navbar-nav">
    
       <li class="active"><a href="Supplier">Supplier</a></li>
      <li class="active"><a href="Product">Product</a></li>
      <li class="active"><a href="Category">Category</a></li>
      <li class="social pull-right"><a href=<c:url value="perform_logout"/>>Logout</a></li>
    </ul>
  </div>
</nav>
${msg}
${msg1}

<h1>Welcome Admin</h1>
<script>
<script>
var app = angular.module("myapp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl :"Home"
    })
    .when("/Supplier",{
    	templateUrl : "Supplier"
    })
     .when("/Category",{
    	templateUrl : "Category"
    })
    .when("/Product", {
        templateUrl : "Product"
    });
});
</script>  
<c:choose>
<c:when test="${UserClickedsupplier}">
<c:import url="/WEB-INF/view/Supplier.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedproduct}">
<c:import url="/WEB-INF/view/Product.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedcategory}">
<c:import url="/WEB-INF/view/Category.jsp"></c:import>
</c:when>
</c:choose>
</body>
</html>
