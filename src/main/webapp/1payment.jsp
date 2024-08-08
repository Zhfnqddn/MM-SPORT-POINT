<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Badminton Booking System</title>
<link rel="stylesheet" type="text/css" href="payOnline.css">	

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
	<a href="#" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a>
	
	<ul class="navlist">
		<li><a href="#home">HOME</a></li>
		<li><a href="#about">ABOUT</a></li>
		<li><a href="#court">COURT</a></li>
        <li><a href="#booking"  class="active">BOOKING</a></li>
	</ul>
	
	<div class="nav">
		<a href="#" class="btn">MY ACCOUNT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>

<form action="#">
    <div class="container">
        <div class="container-box">
            <div class="font">
            <h1>PAYMENT PAGE</h1>
            </div>

            <div class="code">
                <img src="img/code.jpg" alt="">
                <p>MAYBANK <br> 162284547272 <br> EN. MURUGANATHAM</p>
            </div>

            <div class="type">
                <label for="date">COURT :</label>
                <input type="text" id="court" name="courtName" required><br>
            </div>

            <div class="type">
                <label for="startTime">FROM :</label>
                <input type="text" id="time" name="hourSession" required>
            </div>
            
            <div class="type">
                <label for="endTime">NAME :</label>
                <input type="text" id="time" name="hourSession" required>
            </div>

            <div class="type">
                <label for="courtID">PHONE NUMBER :</label>
                <input type="text" id="court" name="courtID" required>
            </div>

            <div class="type">
                <label for="courtID">TOTAL PAYMENT :</label>
                <input type="text" id="court" name="courtID" required>
            </div>

            <div class="file-upload">
                <label for="courtID">PAYMENT TYPE : ONLINE TRANSFER</label>
                <input type="file" name="upload_image" accept="image/jpeg" id="real-file" hidden="hidden"/>
                <button type="button" id="custom-button">CHOOSE IMAGE</button>
                <span id="custom-text">PLEASE UPLOAD YOUR RECEIPT.</span>
            </div>

            <div class="btn-payment">
                <a href="#" class="btn">MAKE PAYMENT</a> 
            </div>     
        </div>    

          
   </div>
</form>

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
	   <script src="payOnline.js"></script>
</body>
</html>