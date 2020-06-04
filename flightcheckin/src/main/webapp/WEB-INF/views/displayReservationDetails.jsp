<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link rel="stylesheet" type="text/css" href="css/compreservation.css">
		<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<title>Reservation Details</title>
</head>
<body>
<div class="main-w3layouts wrapper">
		<h1>RESERVATION DETAILS</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
                <h2 >Flight Details</h2>
Airlines: ${reservation.flight.operatingAirlines}<br/>
Flight No: ${reservation.flight.flightNumber}<br/>
Departure City: ${reservation.flight.departureCity}<br/>
Arrival City: ${reservation.flight.arrivalCity}<br/>
Date Of Departure: ${reservation.flight.dateOfDeparture}<br/>
Estimate Departure Time: ${reservation.flight.estimatedDepartureTime}<br/>

<h2 >Passenger Details</h2>

First Name: ${reservation.passenger.firstName}<br/>
Last Name: ${reservation.passenger.lastName}<br/>
Email : ${reservation.passenger.email}<br/>
Phone: ${reservation.passenger.phone}<br/>

<form action="completeCheckIn" method="post">
Enter the Number Of Bags You want to check in: <input type="text" name="numberOfBags"/>
<input type="hidden" value="${reservation.id}" name="reservationId"/>
<input type="submit" value="Check In"/>


</form>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			
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
		</ul>
	</div>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		 <script src="js/custom.js"></script>
		
</body>
</html>
		 