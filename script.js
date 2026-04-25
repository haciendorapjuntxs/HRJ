document.addEventListener('DOMContentLoaded', () => {
    console.log("Sitio Haciendo Rap Juntxs cargado correctamente.");
    
    // Iniciamos el carrusel de banner automáticamente
    setInterval(showBannerSlides, 4000);
});

let currentBanner = 0;
// Ahora busca la clase correcta: .banner-slide
const bannerSlides = document.querySelectorAll('.banner-slide');

function showBannerSlides() {
    if (bannerSlides.length === 0) return; // Por seguridad

    bannerSlides[currentBanner].classList.remove('active');
    currentBanner = (currentBanner + 1) % bannerSlides.length;
    bannerSlides[currentBanner].classList.add('active');
}
