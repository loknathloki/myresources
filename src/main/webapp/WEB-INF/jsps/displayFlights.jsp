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
	background: rgb(170, 193, 214);
	font-family: 'Lato', sans-serif;
}

.firstbg {
	background: #0a223d;
	width: 100%;
	height: 200px;
}

.forms {
	margin-top: 68px;
	background-color: #0a223d;
	position: relative;
	z-index: 10;
	width: 100%;
	min-height: 92px;
	position: sticky;
}

.forming {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	width: 1000px;
	margin: 0 auto;
}

.hsw {
	background: #0a223d;
	padding: 11px 0;
	position: fixed;
	z-index: 10;
	width: 100%;
	font-weight: 400;
}

.p1 {
	font-family: 'Lato', sans-serif;
	display: flex;
	flex-direction: column;
	position: relative;
	min-height: 56px;
	border-radius: 4px;
	margin-right: 5px; background : hsla( 0, 0%, 100%, .1);
	width: 250px;
	color: #008cff;
	font-weight: 700;
	font-size: 18px;
	line-height: 12px;
	padding: 4px 9px 0;
	background: hsla(0, 0%, 100%, .1);
}

.input {
	font-weight: 700;
	line-height: 12px;
	color: white;
	margin-top: 15px;
	font-family: 'Lato', sans-serif;
}

.result-box {
	background: white; box-shadow : 0 1px 7px 0 rgb( 0 0 0/ 40%);
	width: 1000px;
	z-index: 10;
	margin: -0 200px 0;
}

.headerline {
	color: white;
	margin: -180px 200px 0px;
	z-index: 10;
	font-size: 24px;
	line-height: 24px;
	margin-bottom: 20px;
	font-weight: 900;
	font-family: 'Lato', sans-serif;
}

table {
	margin: auto;
	padding-top: 20px;
}

th {
	background: #f4f4f4;
	padding: 10px 50px;
	font-size: 12px;
	font-weight: 900;
	border-bottom: 1px solid #eaeaea;
}

td {
	padding: 40px 0;
	text-align: center;
	font-weight: 900;
	border-bottom: 1px solid #eaeaea;
}

.button {
	background-image: linear-gradient(96deg, #53b2fe, #065af3);
	border-radius: 34px;
	box-shadow: 0 1px 7px 0 rgb(0 0 0/ 20%);
	cursor: pointer;
	border: 0;
	width: 50px;
	padding: 10px;
	text-align: center;
	font-weight: 400;
	color: white;
}
</style>
</head>
<body>
	<div class="forms">
		<div class="hsw">
			<div class="forming">
				<div class="p1">
					<p>From</p>
					<p class="input">${from}</p>
				</div>
				<div class="p1">
					<p>To</p>
					<p class="input">${to}</p>
				</div>
				<div class="p1">
					<p>Departure date</p>
					<p class="input">${departureDate}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="firstbg"></div>
	<div>
		<h2 class="headerline">Flights from ${from} to ${to}</h2>
	</div>
	<div class="result-box">
		<table border=0>
			<tr>
				<th>Airlines</th>
				<th>Departure City</th>
				<th>Arrival City</th>
				<th>Departure</th>
				<th>Price</th>
				<th>Select Flight</th>
			</tr>
			<c:forEach items="${findFlights}" var="findFlights">

				<tr>
					<td>${findFlights.operatingAirlines}</td>
					<td>${findFlights.departureCity}</td>
					<td>${findFlights.arrivalCity}</td>
					<td>${findFlights.estimatedDepartureTime}</td>
					<td>Rs.3904</td>
					<td><a
						href="showCompleteReservation?flightId=${findFlights.getId()}"
						class="button">BOOK NOW</a>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>