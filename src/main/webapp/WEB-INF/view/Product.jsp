-<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
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
<body>

<div class="text-center myForm">
<c:url var="editAction" value="editproduct"></c:url>
	<form:form action="${editAction}" modelAttribute="product"
	enctype="multipart/form-data" method="post">
	<tr>
	<td><label for="id">Id:</label></td>
<form:input path="id" />
	<td><label for="name">Name:</label></td>
<form:input path="name" />
		
	<td><label for="description">Description:</label></td>
<form:input path="description" />

	<td><label for="price">Price:</label></td>
<form:input path="price" />
<br>

	<td><label for="category">Category:</label></td>

				<form:select path="categoryid" required="true">
				<c:forEach items="${categoryList}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select>


    


	<td><label for="supplier">Supplier:</label></td>
  
				<form:select path="supplierid" required="true">
				<c:forEach items="${supplierList}" var="supplier">
								<form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select>

<br>
					
	<td><label for="image">Image:</label></td>
					<td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="true" /></td>
				</tr>
				<tr>
					
					<br>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				
  
	</form:form>
	
	<br>
<div align="center">
<table style="width:100%">
<caption type="Products" class="btn btn-primary">Products</caption>

<thead>
<tr>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Product Description</th>
 <th>Product Price</th>
 <th>Product CATEGORY</th>
   <th>Product SUPPLIER</th>
   <th>Image</th>
<th>Edit</th>
<th>Delete</th>
  </tr>
</thead>
<tbody>
<c:forEach items="${productList}" var="product">
  <tr>
    <td><c:out value="${product.id }"/></td>
    <td><c:out value="${product.name }"/></td>
    <td><c:out value="${product.description}"/></td>
    <td><c:out value="${product.price}"/></td>
   <td><c:out value="${product.categoryid}"/></td>
    <td><c:out value="${product.supplierid}"/></td>
   <td><div class="thumbnail">
								<img height="100px" width="100px" alt="${product.id }"
									src="<c:url value="/resources/images/${product.id }.jpg"></c:url>">
							</div>
     <td><a href ="addeditproduct/${product.id}" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-edit"></span> Edit
        </a>
      <td><a href ="adddeleteproduct/${product.id}" class="btn btn-info btn-lg">
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