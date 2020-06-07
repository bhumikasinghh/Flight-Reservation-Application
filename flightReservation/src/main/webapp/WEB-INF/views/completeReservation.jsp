<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
		Email<input type="text" name="passengerEmail" id="myEmail"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/>
		Phone<input type="text" name="passengerPhone" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number"/>
		
		<h2 style="text-align:center">Card Details</h2>
		Name on the card<input type="text" name="nameOnTheCard"/>
		Card No<input type="text" name="cardNumber"/ pattern ="[0-9]{16}">
		Expiry Date<input type="text" name="expirationDate" id="expires_mmyy" maxlength="5"/>
		Three Digit Sec Code<input type="text" name="securityCode"  pattern="[0-9]{3}"/>
		
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
		<script>
		function myFunction() {
		  var x = document.getElementById("myEmail").pattern;
		  document.getElementById("demo").innerHTML = x;
		}
		</script>
		<script>
		$('#expires_mmyy').inputmask({
   alias: 'datetime', 
   inputFormat: 'mm/yy'
   min: moment().add(1, 'M').format('MM/YY'),
   max: moment().add(10, 'Y').format('MM/YY')
})</script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>