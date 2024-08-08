<%@page import="java.util.ArrayList"%>
<%@page import="model.BookingBean"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.ConnectionManager" %>
<%@ page import="Controller.bookingController" %>
<%@ page import="model.BookingBean" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Booking</title>
    <link rel="stylesheet" type="text/css" href="cubaa.css">  
    
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

<header>
  <a href="#" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a>
  
  <ul class="navlist">
    <li><a href="1homecusacc.jsp" >HOME</a></li>
    <li><a href="1aboutR.jsp">ABOUT</a></li>
    <li><a href="viewcourt1.jsp">COURT</a></li>  
     <li><a href="cuba.jsp"class="active">BOOKING</a></li>
  </ul>
  
  <div class="nav">
		<a href="ViewCustomer.jsp" class="btn">MY ACCOUNT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	 
</header>

 <div class="container">
	<div class="container-box">
    <h1>BOOKING</h1>
    <h2>Availability</h2>
</div>

	<div class="container-box2">
      <table>
        <%  
        
        Connection conn = null;
        try {
            conn = ConnectionManager.getConnection(); // Call your Connection Manager class to get the connection
      
            String[][] courtNames = {{"Court 1","1"}, {"Court 2","2"}, {"Court 3","3"}};
            String[] times = {"10:00", "11:00", "12:00","13:00", "14:00", "15:00","16:00", "17:00", "18:00","19:00", "20:00", "21:00","22:00"};
    
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM BOOK"); // kena ubah show today booking
            out.println("<h3>Date: 10/1/2024" + "</h3>");
            
            for (int row = 0; row < courtNames.length; row++) {
                out.println("<tr>"); 
                out.println("<td>" + courtNames[row][0] + "</td>"); 

                for (int col = 0; col < times.length; col++) {
                    boolean booked = false;                  
                    ResultSet rs = pstmt.executeQuery(); 
                    while(rs.next()){
                      
                      
                        if(rs.getString(3).equalsIgnoreCase(times[col]) && rs.getString(2).equalsIgnoreCase(courtNames[row][1])){
                            booked = true;
                            
                        }
                    }
                    
                    if(booked){
                        out.println("<td>Booked</td>"); 
                    } else {
                        //out.println("<td><a href='#'>"+ times[col] +"</a></td>");
                        %>
                        
                        <td>
    <form method="post" action="bookingController">
        <input type="hidden" name="courtId" value="<%=courtNames[row][1]%>">
        <input type="hidden" name="times" value="<%=times[col]%>">
        <input type="submit" value="<%=times[col]%>">
        <input type="hidden" class="form-control" id="cust" name="CustID" value="<c:out value="${sessionScope.CustID}"/>">
    </form>
</td>

                        <%
                    }
                } 

                out.println("</tr>"); 
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        } 
        %> 
    </table></div>
    </div>
    </div>
    
 
    
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
		
		<script>
		function myFunction() {
			  var txt;
			  if (confirm("Press a button!")) {
			    txt = "You pressed OK!";
			  } else {
			    txt = "You pressed Cancel!";
			  }
			  document.getElementById("demo").innerHTML = txt;
		</script>
		
		<script>
		const header = document.querySelector("header");

        window.addEventListener("scroll", function(){
        	header.classList.toggle("sticky", window.scrollY > 80);
        });

        let menu = document.querySelector('#menu-icon');
        let navlist = document.querySelector('.navlist');

        menu.onclick = () => {
        	menu.classList.toggle('bx-x');
        	navlist.classList.toggle('open');
        }

        window.onscroll = () => {
        	menu.classList.remove('bx-x');
        	navlist.classList.remove('open');
        }

        const sr = ScrollReveal({
        	origin: 'top',
        	distance: '85px',
        	duration: 2500,
        	reset: true
        })

        sr.reveal ('.home-text',{delay:100});
	   	sr.reveal ('.home-img',{delay:100});
	   	sr.reveal ('.container-box',{delay:100});
        sr.reveal ('.table-responsive',{delay:100});
        sr.reveal ('.container',{delay:100});
        sr.reveal ('.contact-text',{delay:100});
        sr.reveal ('.scroll',{delay:100});
        sr.reveal ('.btn-next',{delay:100});
		</script>
		
		
</body> 
</html>