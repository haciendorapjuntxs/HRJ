document.addEventListener('DOMContentLoaded', () => {
    const carousels = document.querySelectorAll('.banner-carousel');
    carousels.forEach(carousel => {
        const slides = carousel.querySelectorAll('.banner-slide');
        if (slides.length === 0) return;
        let currentBanner = 0;
        
        setInterval(() => {
            slides[currentBanner].classList.remove('active');
            currentBanner = (currentBanner + 1) % slides.length;
            slides[currentBanner].classList.add('active');
        }, 2000); // 2 segundos
    });
});
