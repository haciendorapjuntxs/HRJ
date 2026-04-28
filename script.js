document.addEventListener('DOMContentLoaded', () => {
    console.log("Sitio Haciendo Rap Juntxs cargado correctamente.");

    // Buscamos todos los carruseles presentes en la página
    const carousels = document.querySelectorAll('.banner-carousel');

    carousels.forEach(carousel => {
        const slides = carousel.querySelectorAll('.banner-slide');
        let currentBanner = 0;

        if (slides.length === 0) return;

        function showNextSlide() {
            // Quitamos la clase 'active' del slide actual
            slides[currentBanner].classList.remove('active');
            
            // Calculamos el índice siguiente
            currentBanner = (currentBanner + 1) % slides.length;
            
            // Activamos el nuevo slide
            slides[currentBanner].classList.add('active');
        }

        // Iniciamos el intervalo para este carrusel específico (cada 2 segundos)
        setInterval(showNextSlide, 2000);
    });
}); 
