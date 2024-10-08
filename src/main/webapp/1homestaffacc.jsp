<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Badminton Booking System</title>
<link rel="stylesheet" type="text/css" href="accountStaff.css">	

<!---box icons--->	
<link rel="stylesheet"
href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" 
rel="stylesheet">

<!---google fonts--->	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?
family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>

<body>
	
	
<!---header--->
<header>
	<a href="1homestaffacc.jsp" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a><br>
    <h4>STAFF</h4>

	<ul class="navlist">
		<li><a href="1homestaffacc.jsp" class="active">HOME</a></li>
		<li class="dropdown">
            <a href="#booking" class="dropdown-toggle">ACCOUNT<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="ListCustController">CUSTOMER</a></li>
                <li><a href="ListStaffController">STAFF</a></li>
            </ul>
        </li>
        <li><a href="ListBookingController">BOOKING</a></li>
        <li><a href="VerifyPaymentController">PAYMENT</a></li>
		<li><a href="addcourt.jsp">COURT</a></li>	
	</ul>
	
	<div class="nav">
		<a href="index.html" class="btn">LOGOUT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>

<!---home--->
<section class="home" id="home">
	<div class="home-text">
		<h1>BEST, TO <br> THE <span>BEAST</span> <br></h1>
		<a href="#" class="btn">STAFF PAGE</a>
	</div>
	<div class= "home-img">
		<img src="img/lcwv1.png">		
	</div>
</section>

<section class="container">
	<div class="container-box">
		<img src="img/c1.png">
		<h3>9:00 am - 23:00 pm</h3>
		<a href="#">Working Hours</a>
	</div>
	
	<div class="container-box">
		<img src="img/c2.png">
		<h3>MM SPORT POINT</h3>
		<a href="https://goo.gl/maps/nCdo4CHZT9EFuedN7">Get Directions</a>
	</div>
	
	<div class="container-box">
		<img src="img/c3.png">
		<h3>016-682 7209</h3>
		<a href="#">Call Us Now</a>
	</div>
</section>

<!-- about -->
<section class="about" id="about">
	<div class="about-img">
		<img src="img/about.jpg">
	</div>
	
	<div class="about-text">
		<h2>It should not all <br> be about badminton.</h2>
		<p>MM Sport Point became one of the sport centre in Jasin that major on badminton sport.
		MM Sport Point has become a popular venue for hosting various tournaments. 
		MM Sport Point is a sport center in Jasin that specializes in badminton and has established 
		itself as a preferred venue for hosting tournaments related to the sport or events. </p>
		<a href="about.html" class="btn">EXPLORE STORY<i class='bx bxs-right-arrow-circle'></i></a>
	</div>
</section>

<!-- contact -->

<section class="contact" id="contact">
	<div class="contact-text">
			<h2>Contact Us</h2>
			<p>" The beauty of the game is strength, 
			stamina and technique and when you shorten the game, 
			technique goes for a toss and the quality of badminton 
			will surely go down in this system. " 
			<br>- Jwala Gutta -</p>
				<div class="social">
					<a href="#" class="clr"><i class='bx bxl-whatsapp-square'></i></a>
					<a href="https://www.facebook.com/p/MM-SPORT-POINT-100054418932651/"><i class='bx bxl-facebook-square'></i></a>
					<a href="#"><i class='bx bxl-instagram'></i></a>
					<a href="#"><i class='bx bxl-twitter'></i></a>
				</div>			
		</div>
</section>

<!--- scroll top --->
<a href="#" class="scroll">
	<i class='bx bxs-up-arrow-square'></i>
</a>

<script src="https://unpkg.com/scrollreveal"></script>

<!---link to js---> 
	   <script src="accountStaff.js"></script>
	   
</body>
</html>