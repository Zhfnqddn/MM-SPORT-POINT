<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Badminton Booking System</title>
<link rel="stylesheet" type="text/css" href="about.css">	

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
		<li><a href="index.html" >HOME</a></li>
		<li><a href="1about.jsp"class="active">ABOUT</a></li>
		<li><a href="cuba.jsp">BOOKING</a></li>
		<li><a href="viewcourt1.jsp">COURT</a></li>	
	</ul>
	
	<div class="nav">
		<a href="loginin.jsp">LOGIN</a>
		<a href="registerpage.jsp">REGISTER</a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>



<!--about-->
<section class="about" id="about">
    <div class="about-text">
        <h1>ABOUT US</h1>
    </div>
    <div class="slide-container">
        <div class="slides">
            <img src="img/about.jpg" class="active">
            <img src="img/abt2.jpg">
            <img src="img/abt3.jpg">
            <img src="img/abt4.jpg">
            <img src="img/abt5.jpg">
        </div>
    </div>

    <div class="buttons">
        <span class="next">&#10095;</span>
        <span class="prev">&#10094;</span>
    </div>

    <div class="dotsContainer">
        <div class="dot active" attr='0'></div>
        <div class="dot" attr='1'></div>
        <div class="dot" attr='2'></div>
        <div class="dot" attr='3'></div>
        <div class="dot" attr='4'></div>
    </div>

    <div class="about-text-2">
        <h2>OUR STORY</h2>
        <p>MM Sport Point became one of the sport centre in Jasin that major on badminton sport.
            MM Sport Point has become a popular venue for hosting various tournaments. 
            MM Sport Point is a sport center in Jasin that specializes in badminton and has established 
            itself as a preferred venue for hosting tournaments related to the sport or events.</p>
    </div>
</section>

<section class="container">
    <div class="container-box">
        <h2>OUR VISION</h2>
        <p>To create a badminton community that 
            is supportive, progressive, friendly, 
            competitive and encouraging.  
            To ensure that athletes, no matter 
            what their age or background, will 
            have an opportunity to reach their 
            potential.</p>
    </div>

    <div class="container-box">
        <h2>OUR MISSION</h2>
        <p>To promote participation in badminton as 
            a sport for life and encourage the growth 
            of badminton athletes,and coaches throughout 
            MM Sport Point.</p>
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
<script src="about.js"></script>

</body>
</html>