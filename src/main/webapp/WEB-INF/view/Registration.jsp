<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
</head>
<body>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
p{
border : 1px solid powderblue;
margin : 
}
</style>
</head>
<body>
<h1 align="center">Registration</h1>
<div align="center">
<form class="form-horizontol" role="form">
<table>
<tr>
<td><label for="email">First Name:</label></td>
<td><p><input type="text" name="fname"id="fname" placeholder="Enter First Name"></p></td>
</tr>
<tr>
<td><label for="email">Last Name:</label></td>
<td><p><input type="text" name="lname"id="lname" placeholder="Enter Last Name"></p></td>
</tr>
<tr>
<td><label for="email">Email:</label></td>
<td><p><input type="text" name="email"id="email" placeholder="Enter Email"></p></td>
</tr>
<tr>
<td><label for="pwd">Password:</label></td>
<td><p><input type="password" name="pwd" id="pwd" placeholder="Enter Password"></p></td>
</tr>
<tr>
<td><label>Contact:</label></td>
<td><p><input type="number" name = "mobile" id="mobile" placeholder="Enter Mobile"></p></td>
</tr>
<tr>
<td><label>Address:</label></td>
<td><p><textarea rows = "4" cols="22" placeholder="Enter Address"></textarea></p></td>
</tr>
</table>
<div align="center">
<button type="submit" class="btn btn-success">Register</button>
 </div> 
</form>
</div>

</body>
</html>