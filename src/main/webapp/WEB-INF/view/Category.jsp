<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'categorygson'
			}).success(function(data, status, headers, config) {
				$scope.categories = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>

</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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


<c:url var="editAction" value="editcategory"></c:url>
	<div class="text-center myForm">
		<c:url var="action" value="editcategory"></c:url>
		<form:form action="${editAction}" modelAttribute="category" >
			<table>
	
	               <tr>
					<td>Id:</td>
					<td><form:input class="input1" path="id" required="true"/></td>
				</tr>
				
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" required="true"/></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input class="input1" path="description" required="true"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	


<div align="center">
<table style="width:80%">
<caption>Categories</caption>
<thead>
 <tr>
    <th>Category ID</th>
    <th>Category Name</th>
    <th>Category Description</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
</thead>
<tbody>
<c:forEach items="${categoryList}" var="category">
  <tr>
      <td><c:out value="${category.id }"/></td>
   <td> <c:out value="${category.name }"/></td>
   <td> <c:out value="${category.description}"/></td>
   <td><a href ="addeditcategory/${category.id}"class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-edit"></span> Edit
        </a>
      <td><a href ="adddeletecategory/${category.id}" class="btn btn-info btn-lg" />
          <span class="glyphicon glyphicon-trash"></span> Trash
        </a>
    
  </tr>
  </c:forEach>
  
  
   </tbody>
</table>
</div>
<script src="bootstrap/js/bootstrap.min.js"></script> 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/all.js"></script>
    <script src="js/main.js"></script>
 
</body>

</html>