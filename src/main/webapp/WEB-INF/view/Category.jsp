<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
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
	<form:form action="${editAction}" modelAttribute="category">
	
<tr>
	<td><label for="id">Id:</label></td>	
<form:input path="id"  />
	</tr>
	<tr>
	<td><label for="name">Name:</label></td>	
<form:input path="name" />
	</tr>	
	<tr>
	<td><label for="description">Description:</label></td>
<form:input path="description" />
</tr>
<button type="submit" class="btn btn-primary">edit</button>
		
		
	</form:form>
	
	


<div align="center">
<table style="width:80%">
<br>
<br>
<caption type="Categories" class="btn btn-primary">Categories</button>
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
    <td><c:out value="${category.name }"/></td>
    <td><c:out value="${category.description}"/></td>
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
</body>

</html>