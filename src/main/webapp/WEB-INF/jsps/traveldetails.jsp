<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menus.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreateMyTrip</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&display=swap"
	rel="stylesheet">
<style>
.container{
display: flex;
flex-direction: row;
justify-content: space-around;

}
.header{
margin-top: 68px;
}
#p1,p {
	font-family: 'Lato', sans-serif;
	font-weight: 400;
	font-size: 14px;
	color: #333;
	line-height: 1.5;
	padding-left: 7px;
	font-size: 14px;
	margin-top: 15px;
}
.login1 {
	font-family: 'Lato', sans-serif;
	font-weight: 400;
	font-size: 16px;
	color: #333;
	line-height: 1.2;
	display: block;
	width: 100%;
	height: 30px;
	background: 0 0;
	padding: 0 7px 0 43px;
}

input,.login1{
	outline: none;
	border: none;
	border-bottom: 2px solid #d9d9d9;
}
.login1:hover{
border-bottom: 2px solid black;
}
.divide{
	margin:30px 0px 0px 60px;
	width: 700px;
	height: 400px;
	overflow: hidden;
	background-color: rgba(255, 255, 255, 0.8);
	border-radius: 10px;
}
body{
background: rgb(170, 193, 214);
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
.btnn{
	background-image: linear-gradient(
96deg
, #53b2fe, #065af3);
    border-radius: 96px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 20%);
    cursor: pointer;
    border: 0;
    width: 140px;
    margin: 20px 0px 0px 40px;
    padding: 10px 30px;
    text-align: center;
    font-weight: 700;
    color: white;
    font-size: 18px;
}
h2{
color: black;
}
</style>
</head>
<body>
<div class="header">
<h2 class="review">Traveller Details</h2>
</div>
<div class="divide">
<div class="container">
<div>
<h2>Enter Passenger Details</h2>
<form class="log-1" action="confirmReservation" method="post">
<p id="p1">First Name</p>
<input class="login1" type="text"  name="firstName" required>
<p id="p1">Last Name</p>
<input class="login1" type="text" name="lastName" >
<p id="p1">Middle Name</p>
<input class="login1" type="text"  name="middleName" required>
<p id="p1">Email</p>
<input class="login1" type="email"  name="email" required>
<p id="p1">Phone</p>
<input class="login1" type="text" name="phone" required>
<input type="hidden" name="flightId" value="${flight.id}"/>
</div>
<div>
<h2>Enter the card details</h2>
<p id="p1"> Name On The Card</p>
<input class="login1" type="text"  name="nameOnTheCard" required>
<p id="p1">Card Number</p>
<input class="login1" type="text"  name="cardNumber" required>
<p id="p1">CVV</p>
<input class="login1" type="text"  name="cvv" required>
<p id="p1">Expiry Date</p>
<input class="login1" type="text"  name="expiryDate" required><br/>
	    </pre>
<input class="btnn" type="Submit" value="Proceed"/>
	</form>
	</div>
		</div>
</div>
</body>
</html>