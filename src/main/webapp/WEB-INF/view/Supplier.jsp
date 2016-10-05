<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script>
 	var app = angular.module('myApp', []);
 	function MyController($scope, $http) {
 		$scope.sortType = 'name'; // set the default sort type
 		$scope.sortReverse = false; // set the default sort order
 		$scope.search = '';
 		$scope.getDataFromServer = function() {
 			$http({
 				method : 'GET',
 				url : 'suppliergson'
 			}).success(function(data, status, headers, config) {
 				$scope.suppliers = data;// alert(data); 
 			}).error(function(data, status, headers, config) {
 			});
 		};
 	};
 </script>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
border: 2px solid #dddddd;
    color:green;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}


th {
    background-color: black;
    color: white;
    }
</style>
</head>


<c:url var="editAction" value="editsupplier"></c:url>
	<form:form action="${editAction}" modelAttribute="supplier">
	<tr>
	<td><label for="id">Id:</label></td>
<form:input path="id" />
</tr>	
<tr>
	<td><label for="name">Name:</label></td>	
<form:input path="name" />
	</tr>
	<tr>
	<td><label for="address">Address:</label></td>	
<form:input path="address" />
</tr>		
		
		<button type="submit" class="btn btn-primary">edit</button>
	</form:form>
	
	${successmessage }
 	
<div class="container" ng-app="myApp"
 				ng-controller="MyController" ng-init="getDataFromServer()">
 			<br>
<div align="center">
<table style="width:80%">
<br>
<br>
<caption type="Suppliers" class="btn btn-primary">Suppliers</button>
<thead>
<tr>
    <th>Supplier ID</th>
    <th>Supplier Name</th>
    <th>Supplier Address</th>
     <th>Edit</th>
     <th>Delete</th>
  </tr>
</thead>
<tbody>
<c:forEach items="${supplierList}" var="supplier">
  <tr>
    <td><c:out value="${supplier.id }"/></td>
    <td><c:out value="${supplier.name }"/></td>
    <td><c:out value="${supplier.address}"/></td>
     <td><a href ="addeditsupplier/${supplier.id}" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-edit"></span> Edit
        </a>
      <td><a href ="adddeletesupplier/${supplier.id}" class="btn btn-info btn-lg" />
          <span class="glyphicon glyphicon-trash"></span> Trash
        </a>
    
  </tr>
  </c:forEach>
  
  
   </tbody>
</table>
</div>
 <script src="bootstrap/js/bootstrap.min.js"></script>  
</body>
</html>