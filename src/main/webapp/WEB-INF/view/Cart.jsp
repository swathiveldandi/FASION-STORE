
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


  <style>

table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
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
<body background="" ng-app="myApp">
<h1>Your Cart</h1>
${emptycart}





<table style="width:100%">
<tr>
<th>Product Name</th>
<th>price</th>

<th>Delete</th>
<th>quantity</th>
</tr>


<c:forEach items="${cartList }" var="cart">
<tr>
<td><c:out value="${cart.productname }"/></td>
<td><c:out value="${cart.price }"/></td>

<%-- <td>
 <c:url var="action" value="editcart/${cart.id}"></c:url>
		<form:form action="${action}" name="formID" modelAttribute="cart" method="post">
<form:select path="quantity" id="sel1" name="quantity" onchange="checkAndSubmit()">
<form:option value="1">1</form:option>
<form:option value="2">2</form:option>
<form:option value="3">3</form:option>
<form:option value="4">4</form:option>
<form:option value="5">5</form:option>
<form:option value="6">6</form:option>
<form:option value="7">7</form:option>
<form:option value="8">8</form:option>
<form:option value="9">9</form:option>
<form:option value="10">10</form:option>
</form:select>
</form:form>
 </td> --%>
<td><a href="delete/${cart.id}">delete</a></td>
<td><c:out value="${cart.quantity }"></c:out></td>

<script type="text/javascript">
function checkAndSubmit()
{
document.formID.submit();
}

</script>
</c:forEach></table>

						
				<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total : Rs ${cartprice}</strong></td>
						</tr>
						<tr>
						<br>
							<td><a href="Home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
				
							<td colspan="2" class="hidden-xs"></td>
							<br>
							<form action="placeorder">
						<div  class="col-xs-3">
							<td><a href="checkoutFlow" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
</body>
</html>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Your Cart</h1>
${emptycart}
<c:forEach items="${cartList }" var="cart">
Product:<c:out value="${cart.productname }"/><br>
Price:Rs.<c:out value="${cart.price }"/><br>Quantity
<a href="delete/${cart.id}">delete</a><br>
quantity:<c:out value="${cart.quantity }"></c:out></c:forEach>
<br>
<hr>
Total Price:-->




 
 
 
