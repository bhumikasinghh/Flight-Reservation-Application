<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<title>User Login</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/loginstylesheet.css">
	<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
	</head>
	<body>
	<div class="main-w3layouts wrapper">
		<h1>Login</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
					<form action="login" method="post">
					<input  type="text" name="email" id="myEmail" placeholder="email" required>
					<input  type="password" name="password" placeholder="Password" required>
					<div class="wthree-text">
						<label class="anim">
							
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="Login">
					<div class="row justify-content-center">${msg}</div>
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
<script>
		function myFunction() {
		  var x = document.getElementById("myEmail").pattern;
		  document.getElementById("demo").innerHTML = x;
		}
		</script>
</body>
</html>