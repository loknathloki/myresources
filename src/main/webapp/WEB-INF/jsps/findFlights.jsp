<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
body {
	font-family: 'Lato', sans-serif;
	box-sizing: border-box;
	background-color: #e0e0e0;
}

.find {
	box-shadow: 0 1px 7px 0 rgb(0 0 0/ 40%);
	background-color: #fff;
	margin-top: 68px;
	padding-top: 70px;
	height: 230px;
}

.hed2 {
	font-weight: 400;
	font-size: 30px;
	line-height: 30px;
	color: #000;
	margin-bottom: 50px;
	margin-left: 15px;
}

h1, h2, h3, h4, h5, h6, p, ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

.cheap, .flight {
	color: #249995;
	font-weight: 900;
	font-size: 36px;
	line-height: 30px;
}

.forms {
	padding: 0 25px;
	z-index: 10;
	width: 1200px;
	margin: -55px auto 0;
	border-radius: 10px;
	box-shadow: 0 1px 30px 0 rgb(0 0 0/ 10%);
	background-color: #fff;
	min-height: 92px;
	position: sticky;
}

.header-img1 {
	width: 418px;
	height: 230px;
	background-repeat: no-repeat;
	background-position: center;
	display: inline-block;
	background-size: contain;
	position: absolute;
	top: 30%;
	left: 80%;
	transform: translate(-50%, -50%);
}

.forming {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	padding-top: 20px;
	align-items: center;
}

.btn {
	background-image: linear-gradient(96deg, #53b2fe, #065af3);
	flex-shrink: 0;
	border-radius: 34px;
	box-shadow: 0 1px 7px 0 rgb(0 0 0/ 20%);
	display: inline-block;
	color: #fff;
	text-transform: uppercase;
	cursor: pointer;
	border: 0;
	width: 176px;
	font-size: 18px;
	margin-left: 30px;
	font-weight: 900;
	padding: 9px 20px;
	text-align: center;
	display: inline-block;
	padding: 9px 20px;
	font-size: 18px;
	margin-left: 30px;
}

#p1 {
	font-weight: 900;
	margin-bottom: 6px;
	color: #878787;
	    font-size: 12px;
}
.input{
    outline: none;
    border: none;
    border-bottom: 2px solid #d9d9d9;
}
.input:hover{
border-bottom: 2px solid black;
}

</style>
</head>
<body>
	<div class="find">
		<div>
			<h2 class="hed2">
				Explore & Book The <span class="cheap">Cheapest <span
					class="cheap flight" style="color: black">Flights</span>
			</h2>
		</div>
		<img src="<c:url value="/resources/imgs/header.jpg"></c:url>"
			class="header-img1" />
	</div>
	<div class="forms">
		<form class="forming" action="findFlights" method="post">
			<div>
				<p id="p1">From</p>
				<input class="input" type="text" name="from" />
			</div>
			<div>
				<p id="p1">To</p>
				<input class="input"  type="text" name="to" />
			</div>
			<div>
				<p id="p1">Departure date</p>
				<input class="input"  type="text" name="departureDate" />
			</div>
			<input type="submit" class="btn" value="Explore" />
		</form>
	</div>
	<div class="greyit"></div>
</body>
</html>