<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Register User</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link rel="stylesheet" type="text/css" href="css/registerstylesheet.css">
		<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
		
	</head>
	<body>
	<div class="main-w3layouts wrapper">
		<h1>User Registration</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
					<form action="registerUser" method="post">
					<input type="text" name="firstName" placeholder="FirstName" required>
				    <input type="text" name="lastName" placeholder="Lastname" required>
					<input  type="text" name="email" id="myEmail" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
					<input  type="password" name="password" placeholder="Password" required>
					<input type="password" name="confirmPassword" placeholder="Confirm Password" required>
					<div class="wthree-text">
						<label class="anim">
							
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Register">
				</form>
			</div>
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
		</ul>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		 <script src="js/custom.js"></script>
		 
		 <script>
		function myFunction() {
		  var x = document.getElementById("myEmail").pattern;
		  document.getElementById("demo").innerHTML = x;
		}
		</script>
</body>
</html>
		 