<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
 <%@ include file="login.css" %>
</style>
</head>
<body>
<div id="log">
 <img src="<c:url value="/resources/imgs/Aeroplane-photo.jpg"></c:url>" /> 
<div class="container">
<div class="login">
<span><h2>Login</h2></span>
<form class="log-1" action="verifyLogin" method="post">
<p id="p1">Useremail</p>
<input class="login1" type="email" placeholder="Type your useremail" name="emailid" required >
<p id="p1">Password</p>
<input class="login1" type="password" placeholder="Type your password" name="password" required >
<input type="submit" class="btn"  value="Login"/>
<p class="p2">Create Account<a href="showReg" class="btn-1">Sign Up</a></p>
</form>
${error}
</div>
</div>
</div>
</body>
</html>