/*  Funciones del carrusel  */

let currentSlide = 0;
const slides = document.querySelectorAll('.carousel-slide');
const prevButton = document.getElementById('prevBtn'); 
const nextButton = document.getElementById('nextBtn'); 

function showSlide() {
    slides.forEach((slide, index) => {
        slide.style.transform = `translateX(${100 * (index - currentSlide)}%)`;
    });
}

function changeSlide(direction) {
    currentSlide = (currentSlide + direction + slides.length) % slides.length;
    showSlide();
}

prevButton.addEventListener('click', () => {
    changeSlide(-1);
});

nextButton.addEventListener('click', () => {
    changeSlide(1);
});

showSlide();
