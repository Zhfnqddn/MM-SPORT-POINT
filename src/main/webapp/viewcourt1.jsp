<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Time Picker with Duration</title>
    <link rel="stylesheet" type="text/css" href="court.css">
    

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

    <!--HEADER-->
    <!---header--->

<header>
	<a href="1homecusacc.jsp" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a>
	
	<ul class="navlist">
		<li><a href="1homecusacc.jsp">HOME</a></li>
		<li><a href="1aboutR.jsp" >ABOUT</a></li>
		<li><a href="viewcourt1.jsp"class="active">COURT</a></li>
        <li><a href="cuba.jsp">BOOKING</a></li>
	</ul>
	
	<div class="nav">
		<a href="ViewCustomer.jsp" class="btn">MY ACCOUNT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>

<!--VIEW COURT-->

<div class="view-court">
    <h1>COURT</h1>
</div>

<form action="#" method="post">
    <div class="container">
        <div class="container-box">
            <h5>COURT A</h5>
            <img src="img/court1.jpg" alt=""> 
            <a href="cuba.jsp" class="btn2">BOOK NOW</a>          
        </div>

        <div class="container-box">
            <h5>COURT B</h5>
            <img src="img/court2.jpg" alt=""> 
            <a href="cuba.jsp" class="btn2">BOOK NOW</a>      
        </div>

        <div class="container-box">
            <h5>COURT C</h5>
            <img src="img/court3.jpg" alt=""> 
            <a href="cuba.jsp" class="btn2">BOOK NOW</a>   
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
   <script src="court.js"></script>

</body>
</html>


