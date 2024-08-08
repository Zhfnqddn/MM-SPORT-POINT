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

sr.reveal ('.view-court',{delay:100});
sr.reveal ('.container-box',{delay:100});
sr.reveal ('.scroll',{delay:100});
sr.reveal ('.contact-text',{delay:100});

/*PAYMENT*/
/* IMAGE UPLOAD */

const realFileBtn = document.getElementById("real-file");
const customBtn = document.getElementById("custom-button");
const customTxt = document.getElementById("custom-text");

customBtn.addEventListener("click", function() {
    realFileBtn.click();
});

realFileBtn.addEventListener("change", function() {
    if (realFileBtn.value) {
        customTxt.innerHTML = realFileBtn.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
    } else {
        customTxt.innerHTML = "No file chosen, yet.";
    }
});

