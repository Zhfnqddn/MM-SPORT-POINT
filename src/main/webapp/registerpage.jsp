<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
<link href="registerpage.css" rel="stylesheet">
<!---box icons--->	
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
		<li><a href="1about.jsp">ABOUT</a></li>	
		<li><a href="viewcourt1.jsp">COURT</a></li>
		<li><a href="cuba.jsp">BOOKING</a></li>	
	</ul>
	
	<div class="nav">
		<a href="loginin.jsp">LOGIN</a>
		<a href="registerpage.jsp" class="active">REGISTER</a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>

<main>
        <div class="box">
          <div class="inner-box">
            <div class="forms-wrap">
              <form action="signupCustController" method="post" autocomplete="off"  class="sign-in-form">
                <div class="logo">
                  <h4>Customer Page</h4>
                </div>
  
                <div class="heading">
                  <h2>Create New Account</h2>
                  <h6>If u are new Staff >></h6>
                  <a href="#" class="toggle">Staff Page</a>
                </div>
  
                <div class="actual-form">
                    <div class="input-wrap">
                      <input
                        type="text" id="username" name="CustName" required minlength="4" maxlength="20" pattern="[a-zA-Z0-9_]+" title="Username must contain only letters, numbers, and underscores (4-20 characters)"
                        class="input-field"
                        required
                      />
                      <label>Username</label>
                    </div>
  
                    <div class="input-wrap">
                      <input
                        type="tel" id="phone" name="CustPhoneNum" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number"
                        class="input-field"
                        required
                      />
                      <label>Phone Number</label>
                    </div>
    
                    <div class="input-wrap">
                      <input
                        type="email" id="email" name="CustEmail"
                        class="input-field"
                        required
                      />
                      <label>Email</label>
                    </div>
    
                    <div class="input-wrap">
                      <input
                        type="password" id="password" name="CustPass" required minlength="6"
                        class="input-field"
                        autocomplete="off"
                        required
                      />
                      <label>Password</label>
                    </div>
  
                  <input type="submit" value="Sign Up" class="sign-btn" onclick="myFunction()"/>
                </div>
              </form>
 
              <form action="signupStaffController" method="post"  autocomplete="off" class="sign-up-form">
                <div class="logo">
                  <h4>Staff Page</h4>
                </div>

                <div class="heading">
                  <h2>New Staff Register</h2>
                  <h6>If u are new Customer >></h6>
                  <a href="#" class="toggle">Customer Page</a>
                </div>
                
                <div class="actual-form">
                  <div class="input-wrap">
                    <input
                      type="text" id="username" name="StaffName" required minlength="4" maxlength="20" pattern="[a-zA-Z0-9_]+" title="Username must contain only letters, numbers, and underscores (4-20 characters)"
                      class="input-field"
                      required
                    />
                    <label>Username</label>
                  </div>
                  
                  <div class="input-wrap">
                    <input
                      type="text" id="staffrole" name="StaffRole" required minlength="5" maxlength="7" title="Enter Staff or manager Only"
                      class="input-field"
                      required
                    />
                    <label>Staff Role</label>
                  </div>
 				<div class="input-wrap">
                    <input
                      type="text" id="staffrole" name="ManagerID" required minlength="1" maxlength="7" title="Enter Staff or manager Only"
                      class="input-field"
                      required
                    />
                    <label>Manager ID</label>
                  </div>
                  <div class="input-wrap">
                    <input
                      type="tel" id="phone" name="StaffPhoneNum" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number"
                      class="input-field"
                      required
                    />
                    <label>Phone Number</label>
                  </div>
  
                  <div class="input-wrap">
                    <input
                      type="email" id="email" name="StaffEmail"
                      class="input-field"
                      autocomplete="off"
                      required
                    />
                    <label>Email</label>
                  </div>
  
                  <div class="input-wrap">
                    <input
                      type="password" id="password" name="StaffPass" required minlength="6"
                      class="input-field"
                     autocomplete="off"
                     required
                    />
                    <label>Password</label>
                  </div>

                  
                  <input type="submit" value="Sign Up" class="sign-btn" onclick="myFunction()"/>
                  </div>
              </form>
            </div>
  
            <div class="carousel">
              <div class="images-wrapper">
                <img src="img/lcw_c1.png" class="image img-1 show" height="350px" width="30px" alt="" />
                <img src="img/lcw_c2.png" height="350px" width="30px" class="image img-2" alt="" />
                <img src="img/lcw_c3.png" height="350px" width="30px" class="image img-3" alt="" />
              </div>
  
              <div class="text-slider">
                <div class="text-wrap">
                  <div class="text-group">
                    <h2>Create your own courses</h2>
                    <h2>Customize as you like</h2>
                    <h2>Invite students to your class</h2>
                  </div>
                </div>
  
                <div class="bullets">
                  <span class="active" data-value="1"></span>
                  <span data-value="2"></span>
                  <span data-value="3"></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
      
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     
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

	   sr.reveal ('.box',{delay:100});
	   sr.reveal ('.contact',{delay:100});
	   sr.reveal ('.scroll',{delay:100});

	   const inputs = document.querySelectorAll(".input-field");
	   const toggle_btn = document.querySelectorAll(".toggle");
	   const main = document.querySelector("main");
	   const bullets = document.querySelectorAll(".bullets span");
	   const images = document.querySelectorAll(".image");

	   /*edit*/
	   inputs.forEach((inp) => {
	     inp.addEventListener("focus", () => {
	       inp.classList.add("active");
	     });
	     inp.addEventListener("blur", () => {
	       if (inp.value != "") return;
	       inp.classList.remove("active");
	     });
	   });

	   toggle_btn.forEach((btn) => {
	     btn.addEventListener("click", () => {
	       main.classList.toggle("sign-up-mode");
	     });
	   });

	   /*Function*/ 
	   function moveSlider() {
	     let index = this.dataset.value;

	     let currentImage = document.querySelector(`.img-${index}`);
	     images.forEach((img) => img.classList.remove("show"));
	     currentImage.classList.add("show");

	     const textSlider = document.querySelector(".text-group");
	     textSlider.style.transform = `translateY(${-(index - 1) * 2.2}rem)`;

	     bullets.forEach((bull) => bull.classList.remove("active"));
	     this.classList.add("active");
	   }

	   bullets.forEach((bullet) => {
	     bullet.addEventListener("click", moveSlider);
	   });


	   const toggleBtn = document.querySelector('.toggle_btn')
	           const toggleBtnIcon = document.querySelector('.toggle_btn i')
	           const dropDownMenu = document.querySelector('.dropdown_menu')

	           toggleBtn.onclick = function(){
	            dropDownMenu.classList.toggle('open')
	            const isOpen = dropDownMenu.classList.contains('open')

	            toggleBtnIcon.classList = isOpen
	               ? 'fa-solid fa-xmark'
	               : 'fa-solid fa-bars'
	           }
    
	   function myFunction() {
		   alert("Account Successfully Registered!");
		 }
	   
    </script>
</body>
</html>