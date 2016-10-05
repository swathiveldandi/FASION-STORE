<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
  }
  h1{text-align: center;
  font-style: italic;
  font-size: 40px;
  text-decoration: underline;
  
  color: green;}
  

  p {
    text-align: right;
}
  
  </style>
<body background="http://cmdigital.com.ua/wp-content/uploads/2015/07/4415723099_0c46111ca3_b.jpg" ng-app="myApp">
<h1>Your Cart</h1>
${emptycart}
<c:forEach items="${cartList }" var="cart">
Product:<c:out value="${cart.productname }"/><br>
Price:Rs.<c:out value="${cart.price }"/><br>Quantity
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

<a href="delete/${cart.id}">delete</a><br>
quantity:<c:out value="${cart.quantity }"></c:out>
<hr>
<script type="text/javascript">
function checkAndSubmit()
{
document.formID.submit();
}

</script>
</c:forEach>
Total Price:
<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-3">
							<a href="Home" class="btn btn-default btn-sm btn-block">Continue Shopping</a></div>
						<div class="col-xs-6">
							<h4 class="text-right">Total : Rs ${cartprice}</h4>
						</div>
						<form action="placeorder">
						<div  class="col-xs-3">
							<button type="submit" class="btn btn-default btn-block">
								Payment
							</button>
						</div>
						</form>
					</div>
				</div>	
</body>
</html>
<%-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
Total Price: --%>



