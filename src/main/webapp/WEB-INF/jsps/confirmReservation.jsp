<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menus.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
	rel="stylesheet">
<style>
body{
font-size: 12px;
margin: 0;
padding: 0;
box-sizing: border-box;
}
.header{
margin-top: 68px;
}
.space{
margin-left: 20px;
}
.review {
    color: white;
    background: #0a223d;
    padding: 19px;
    font-size: 22px;
    line-height: 22px;
    position: relative;
    z-index: 10;
    width: 100%;
    height: 64px;
}
</style>
</head>
<body>
<div class="header">
<h2 class="review">Booking Confirmation Status</h2>
</div>
<div class="space">
<h2>Your ticket is booked.</h2>
<h2> Your reservation id is : ${reservationId}</h2>
</div>
</body>
</html>