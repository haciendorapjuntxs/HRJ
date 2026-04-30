document.addEventListener('DOMContentLoaded', function() {
    console.log("Iniciando carrusel...");
    
    const container = document.querySelector('.banner-carousel');
    if (!container) {
        console.error("No se encontró el contenedor .banner-carousel");
        return;
    }

    const slides = container.querySelectorAll('.banner-slide');
    if (slides.length === 0) {
        console.error("No se encontraron slides dentro del carrusel");
        return;
    }

    let currentIndex = 0;
    
    
    slides.forEach((slide, index) => {
        slide.style.opacity = (index === 0) ? '1' : '0';
    });

    setInterval(() => {
        slides[currentIndex].style.opacity = '0';
        currentIndex = (currentIndex + 1) % slides.length;
        slides[currentIndex].style.opacity = '1';
        console.log("Cambiando a slide: " + currentIndex);
    }, 2000);
});
