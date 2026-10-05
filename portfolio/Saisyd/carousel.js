
const carouselContainers = document.querySelectorAll(
    ".centered-carousel-container"
);

carouselContainers.forEach(function (container) {

    const slides = container.querySelectorAll(
        ".centered-carousel-slide"
    );

    const dots = container.querySelectorAll(
        ".carousel-dot"
    );

    const previousButton = container.querySelector(
        ".carousel-prev"
    );

    const nextButton = container.querySelector(
        ".carousel-next"
    );

    let currentIndex = 0;

    function updateCarousel() {

        const totalSlides = slides.length;

        slides.forEach(function (slide, index) {

            slide.classList.remove(
                "active",
                "prev",
                "next",
                "hidden"
            );

            if (index === currentIndex) {

                slide.classList.add("active");

            } else if (
                index ===
                (currentIndex - 1 + totalSlides) % totalSlides
            ) {

                slide.classList.add("prev");

            } else if (
                index ===
                (currentIndex + 1) % totalSlides
            ) {

                slide.classList.add("next");

            } else {

                slide.classList.add("hidden");

            }

        });

        dots.forEach(function (dot, index) {

            dot.classList.toggle(
                "active",
                index === currentIndex
            );

        });

    }

    function nextSlide() {

        currentIndex++;

        if (currentIndex >= slides.length) {
            currentIndex = 0;
        }

        updateCarousel();

    }

    function previousSlide() {

        currentIndex--;

        if (currentIndex < 0) {
            currentIndex = slides.length - 1;
        }

        updateCarousel();

    }

    nextButton.addEventListener(
        "click",
        nextSlide
    );

    previousButton.addEventListener(
        "click",
        previousSlide
    );

    dots.forEach(function (dot, index) {

        dot.addEventListener(
            "click",
            function () {

                currentIndex = index;

                updateCarousel();

            }
        );

    });

    slides.forEach(function (slide, index) {

        slide.addEventListener(
            "click",
            function () {

                if (index === currentIndex) {
                    return;
                }

                currentIndex = index;

                updateCarousel();

            }
        );

    });

    updateCarousel();

});

const imageLightbox =
    document.getElementById("imageLightbox");

const lightboxImage =
    document.getElementById("lightboxImage");

const lightboxClose =
    document.querySelector(".lightbox-close");

document.querySelectorAll(".carousel-img").forEach(
    function (image) {

        image.addEventListener(
            "click",
            function (event) {

                event.stopPropagation();

                lightboxImage.src = image.src;

                lightboxImage.alt = image.alt;

                imageLightbox.classList.add("show");

            }
        );

    }
);

lightboxClose.addEventListener(
    "click",
    function () {

        imageLightbox.classList.remove("show");

    }
);

imageLightbox.addEventListener(
    "click",
    function (event) {

        if (event.target === imageLightbox) {

            imageLightbox.classList.remove("show");

        }

    }
);

document.addEventListener(
    "keydown",
    function (event) {

        if (
            event.key === "Escape" &&
            imageLightbox.classList.contains("show")
        ) {

            imageLightbox.classList.remove("show");

        }

    }
);

