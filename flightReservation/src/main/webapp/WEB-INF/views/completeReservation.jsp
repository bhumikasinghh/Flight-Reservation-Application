<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<title>User Login</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/compreservation.css">
	<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<title>Complete Reservation</title>
</head>
<body>
		<div class="main-w3layouts wrapper">
		  <h2 style="text-align:center">Complete Reservation</h2>
		      <div class="main-agileinfo">
					<div class="agileits-top">
					Airline: ${flight.operatingAirlines}<br/>
					Departure City: ${flight.departureCity}<br/>
					Arrival City: ${flight.arrivalCity}<br/>

<form action="completeReservation" method="post"/>

		<h2 style="text-align:center">Passenger Details</h2>
		First Name<input type="text" name="passengerFirstName" />
		Last Name<input type="text" name="passengerLastName"/>
		Email<input type="text" name="passengerEmail"/>
		Phone<input type="text" name="passengerPhone"/>
		
		<h2 style="text-align:center">Card Details</h2>
		Name on the card<input type="text" name="nameOnTheCard"/>
		Card No<input type="text" name="cardNumber"/>
		Expiry Date<input type="text" name="expirationDate"/>
		Three Digit Sec Code<input type="text" name="securityCode"/>
		
		<input type="hidden" name="flightId" value="${flight.id}"/>
							<div class="wthree-text">
					</div>
         <input type="submit" value="Confirm"/>

</form>
</div>
		</div>
		
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>