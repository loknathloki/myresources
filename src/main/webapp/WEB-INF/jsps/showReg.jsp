<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreateMyTrip</title>
<style>
 <%@ include file="showReg.css" %>
</style>
</head>
<body>
<div id="log">
 <img src="<c:url value="/resources/imgs/GNCWir.jpg"></c:url>" /> 
<div class="container">
<div class="login">
<span><h6>Create New Account</h6></span>
<form class="log-1" action="saveReg" method="post">
<p id="p1">First Name</p>
<input class="login1" type="text" placeholder="Type your name" name="firstName" required>
<p id="p1">Last Name</p>
<input class="login1" type="text" placeholder="Type your name" name="lastName" required>
<p id="p1">Email</p>
<input class="login1" type="email" placeholder="Type your useremail" name="email" required>
<p id="p1">Password</p>
<input class="login1" type="password" placeholder="Type your password" name="password" required>
<input type="submit" class="btn" value="Register" />
</form>
</div>
</div>
</div>
</body>
</html>