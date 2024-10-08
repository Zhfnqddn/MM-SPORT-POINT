/**
 * 
 */
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
sr.reveal ('.about-img',{delay:100});
sr.reveal ('.about',{delay:100});
sr.reveal ('.contact',{delay:100});
sr.reveal ('.scroll',{delay:100});

/* DROPDOWN */

document.addEventListener("DOMContentLoaded", function() {
    var dropdownToggle = document.querySelectorAll(".dropdown-toggle");
  
    dropdownToggle.forEach(function(toggle) {
      toggle.addEventListener("click", function(e) {
        e.preventDefault();
        var dropdownMenu = this.nextElementSibling;
        dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
      });
    });
});
