<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td,tr, th {
    border: 2px solid #dddddd;
    color:green;
    text-align: center;
    padding: 8px;
}
</style>
</head>


<c:url var="editAction" value="editproduct"></c:url>
	<form:form action="${editAction}" modelAttribute="product1">
Id:<form:input path="id" />
		
Name:<form:input path="name" />
		
Description:<form:input path="description" />

Price:<form:input path="price" />

CATEGORY_ID:<form:input path="categoryID" />
<br>

  SUPPLIER_ID:<form:input path="supplierID" />


<button type="submit" class="btn btn-primary">edit</button>

		
		
	</form:form>
	
	


<div align="center">
<table style="width:80%">
<br>
<br>
<caption type="Products" class="btn btn-primary">Products</button>
<thead>
<tr>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Product Description</th>
 <th>Product Price</th>
  <th>Product CATEGORY_ID</th>
   <th>Product SUPPLIER_ID</th>
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
    <td><c:out value="${product.categoryID}"/></td>
    <td><c:out value="${product.supplierID}"/></td>
     <td><a href ="addeditproduct/${product.id}"/><img alt="Edit" src="D:\images\edit1.jpg"></a>
      <td><a href ="adddeleteproduct/${product.id}"/><img alt="Delete" src="D:\images\del1.jpg"></a>
    
  </tr>
  </c:forEach>
  
  
   </tbody>
</table>
</div>
<script src="bootstrap/js/bootstrap.min.js"></script>  
</body>
</html>