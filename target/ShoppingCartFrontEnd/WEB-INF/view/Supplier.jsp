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
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    color:red;
    width: 100%;
}

td,tr, th {
    border: 2px solid #dddddd;
    color:Red;
    text-align: center;
    padding: 8px;
}

</style>
</head>


<c:url var="editAction" value="editsupplier"></c:url>
	<form:form action="${editAction}" modelAttribute="supplier1">
Id:<form:input path="id" />
		
Name:<form:input path="name" />
		
Address:<form:input path="address" />
		
		
		<button type="submit" class="btn btn-primary">edit</button>
	</form:form>
	
	


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
     <td><a href ="addeditsupplier/${supplier.id}" /><img alt="Edit" src="D:\images\edit1.jpg"></a>
      <td><a href ="adddeletesupplier/${supplier.id}" /><img alt="Delete" src="D:\images\del1.jpg"></a>
    
  </tr>
  </c:forEach>
  
  
   </tbody>
</table>
</div>
 <script src="bootstrap/js/bootstrap.min.js"></script>  
</body>
</html>