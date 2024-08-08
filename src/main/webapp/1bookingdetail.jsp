<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
    <%@ page import="Controller.bookingController" %>
<%@ page import="model.BookingBean" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Time Picker with Duration</title>
    <link rel="stylesheet" type="text/css" href="detail.css">
    

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
        <a href="1homecusacc.jsp" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a>
	
	<ul class="navlist">
		<li><a href="1homecusacc.jsp">HOME</a></li>
		<li><a href="1aboutR.jsp" class="active">ABOUT</a></li>
		<li><a href="2viewcourt.jsp">COURT</a></li>
        <li><a href="#">BOOKING</a></li>
	</ul>
	
	<div class="nav">
		<a href="1viewcust.jsp" class="btn">MY ACCOUNT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
    </header>



    <form action="bookingController" method = "get">
        <div class="container">
         <div class="container-box">
            <div class="font">
            <h1>BOOKING DETAILS</h1>
        </div>
        <div class="type">
            <label for="date" name ="courtId" > COURT :     <c:out value="${param.courtId}"/></label>
            
            
        </div>
    
        <div class="type">
            <label for="startTime" name = "times">FROM :     <c:out value="${param.times}"/></label>
            
        </div>   

        <div class="btn-confirm">
   <input type="submit" value="Submit">
      
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
   <script src="details.js"></script>

</body>
</html>