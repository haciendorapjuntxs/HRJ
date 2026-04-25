document.addEventListener('DOMContentLoaded', () => {
    console.log("Sitio Haciendo Rap Juntxs cargado correctamente.");
    
    // Declaramos las variables aquí para asegurar que los elementos ya existan
    const bannerSlides = document.querySelectorAll('.banner-slide');
    let currentBanner = 0;

    // Definimos la función de cambio dentro del mismo contexto
    function showBannerSlides() {
        if (bannerSlides.length === 0) return;

        // Quitamos la clase active del actual
        bannerSlides[currentBanner].classList.remove('active');
        
        // Calculamos el siguiente índice
        currentBanner = (currentBanner + 1) % bannerSlides.length;
        
        // Activamos el siguiente
        bannerSlides[currentBanner].classList.add('active');
    }

    // Iniciamos el intervalo de 4 segundos
    setInterval(showBannerSlides, 4000);
});
