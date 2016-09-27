 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<style>
 
 h1{
    text-align: center;
    }
 h3{
    text-align: center;
    }
    </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> New User Registration</title>
</head>

	
	
	<section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" modelAttribute="user"
				method="post">
				
				<h4 >Registration</h1>
				
				
				<div>
				
					 <form:input path="username" type="text" placeholder="Username"
					pattern=".{5,10}" required="true" id="username" name="username"
					title="minimum length for username is 5" />
				</div>
				<br>
				<div>
				
					<form:input path="password" type="password" placeholder="Password" pattern=".{3,8}"
						required="true" id="password" name="password" title="minimum length for passsword is 3" />
				</div>
				<br>
				<div>
				
					<form:input path="email" type="email" placeholder="Email"
						required="true" id="username" name="username" />
				</div>
				<br>

				<div>
				
					<form:input path="mobile" type="text" placeholder="Mobile"
						pattern="^[789]\d{9}$" required="true" id="username"
						name="username" title="Enter valid mobile number" />
				</div>
				<br>
				<div>
					<input type="submit" value="Register" /><a href="Login">Sign In</a>
				</div>

			</form:form>
			
		</section>
		
	</div>
	
</body>
</html>