document.querySelectorAll('.song-rating').forEach(rating => {
  const stars = rating.querySelectorAll('.star');
  let current = 0;

  stars.forEach((star, idx) => {
    star.addEventListener('mouseenter', () => {
      stars.forEach((s, i) => {
        s.classList.toggle('hovered', i <= idx);
      });
    });
    star.addEventListener('mouseleave', () => {
      stars.forEach(s => s.classList.remove('hovered'));
    });
    star.addEventListener('click', () => {
      current = idx + 1;
      rating.setAttribute('data-rating', current);
      stars.forEach((s, i) => {
        s.classList.toggle('selected', i < current);
      });
      // Aquí puedes enviar el voto al servidor si lo deseas
    });
  });
});