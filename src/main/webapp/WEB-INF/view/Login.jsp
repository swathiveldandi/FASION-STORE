<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="<c:url value="/resources/css/stylee.css" />" rel="stylesheet">
 <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
</head>
<body style="padding-top:">
<div class="form">
    <form class="register-form">
      <input type="text" placeholder="name" />
      <input type="password" placeholder="password" />
      <input type="text" placeholder="email address" />
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form action="perform_Login" method="post">
    <form class="login-form">
     	<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for name is 5"/>
				</div>
     <div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					 pattern=".{3,8}" title="Enter Valid credentials"/>
				</div>
     
      <button>login</button>
      <p class="message">Not registered? <a href="Registration">Create an account</a></p>
    </form>
  </div>
</div>
	<!-- <div class="container">
		<section id="content">
			<form action="perform_Login" method="post">
				<h4>Login</h4>
				<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for name is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					 pattern=".{3,8}" title="Enter Valid credentials"/>
				</div>
				<div>
					<input type="submit" value="Login" />  <a href="Registration">Register Here</a>
					
				</div>
				
			</form>
			
		</section>
		
	</div>
	 -->
</body>
</html>