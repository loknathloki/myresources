<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menus.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreateMyTrip</title>
<style>
   <%@ include file="showReservation.css"%>
</style>
</head>
<body>
<div class="header">
<h2 class="review">Review your booking</h2>
</div>
<div class="details">
<div class="result-box">
<table border=0>
<tr class="th1">
<th>Flight Number</th>
<th>Operating Airlines</th>
<th>Departure City</th>
<th>Arrival City</th>
<th>Departure Date</th>
</tr>
<tr class="th2">
<td>${flight.flightNumber}</td>
<td>${flight.operatingAirlines}</td>
<td>${flight.departureCity}</td>
<td>${flight.arrivalCity}</td>
<td>${flight.dateOfDeparture}</td>
</tr>
</table>
</div>
<div class="parag">
<div class="flex-one">
<p class="boldlato">
<span class="pat p2">BAGGAGE :</span>
<span class="pat p2">CHECK IN</span>
<span class="pat p2">CABIN</span>
</p>
<p class="boldlato1">
<span class="pat">ADULT</span>
<span class="pat">15kgs (1 piece only)</span>
<span class="pat">CABIN (1 piece only)</span>
</p>
</div>
</div>
</div>
<div class="pullleft">
<div>
<p class="fare-bold">Fare Summary</p>
<div class="sect" style="z-index: 1;">
<div class="farsmry">
<p class="basfar">Base Fare</p>
<div class="farsmry1">
<p class="row">
<span class="adul">Adult(s) (1 X 3,201)</span>
<span class="rs01">Rs.3,201</span>
</p>
</div>
</div>
<div class="farsmry">
<p class="basfar">Fee & Surcharges</p>
<div class="farsmry1">
<p class="row">
<span class="adul">Total fee & surcharges:</span>
<span class="rs01">Rs.716</span>
</p>
</div>
</div>
<div class="farsmry">
<p class="basfar">Other Services</p>
<div class="farsmry1">
<p class="row">
<span class="adul">Charity</span>
<span class="rs01">Rs.10</span>
</p>
</div>
</div>
<div class="last">
<p class="row">
<span class="rs01">Total Amount</span>
<span class="rs01">Rs.3,927</span>
</p>
</div>
</div>
</div>
</div>
<div class="btnn">
<a href="reserve" class="travel">continue</a>
</div>
<!--  <div class="divide">
<div>
<h2>Enter Passenger Details</h2>
<form action="confirmReservation" method="post">
	<pre>
		First Name<input type="text" name="firstName"/>
		last Name<input type="text" name="lastName"/>
		Middle Name<input type="text" name="middleName"/>
		Email<input type="text" name="email"/>
		Phone<input type="text" name="phone"/>
		<input type="hidden" name="flightId" value="${flight.id}"/>
</div>
		<div>
	    <h2>Enter the card details</h2>
        Name On The Card<input type="text" name="nameOnTheCard"/><br/>
		Card Number<input type="text" name="cardNumber"/><br/>
		CVV<input type="text" name="cvv" /><br/>
		Expiry Date<input type="text" name="expiryDate" /><br/>
		<input type="Submit" value="proceed"/>
	    </pre>
		</div>
	</form>
</div>-->
</body>
</html>
