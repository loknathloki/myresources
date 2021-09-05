<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ include file="menus.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CreateMyTrip</title>
<style>
   <%@ include file="frontpage.css" %>
</style>
</head>
<body>
<section class="header" style="height:115vh;">
<div class="imgcon">
<img src="<c:url value="/resources/imgs/lufthansa.jpg"></c:url>"class="lufthans img1"/>
<!--  <img src="lufthansa.jpg" class="lufthans img1"/></div>-->
<div class="head1-box">
<span class="header-main">we make your</span>
<span class="header-primary">trip easy</span>
<span class="header-sub">create your trip</span>
</div>
<div class="search">
<h3 class="looking low">looking for cheapest flights to make your trip
<span class="explolink"><a href="findFlight">Explore your flights
<i class="fa fa-arrow-right fa-1x" aria-hidden="true" style="color:#008cff"></i></a></span></h3>
</div>
</section>
</body>
</html>