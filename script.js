document.addEventListener('DOMContentLoaded', () => {
    console.log("Sitio Haciendo Rap Juntxs cargado correctamente.");
    
    // Aquí puedes agregar más tarde el código para el carrusel 
    // o animaciones de entrada al hacer scroll.
});
let currentSlide = 0;
const slides = document.querySelectorAll('.slide');

function showSlides() {
    slides.forEach(s => s.classList.remove('active'));
    currentSlide = (currentSlide + 1) % slides.length;
    slides[currentSlide].classList.add('active');
}
setInterval(showSlides, 4000);
