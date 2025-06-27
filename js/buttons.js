function toggleFav(btn) {
  const outline = btn.querySelector('.heart-outline');
  const fill = btn.querySelector('.heart-fill');
  outline.classList.toggle('d-none');
  fill.classList.toggle('d-none');

  if (!outline.classList.contains('d-none')) return;
  const toastEl = document.getElementById('favToast');
  const toast = new bootstrap.Toast(toastEl);
  toast.show();
}

document.addEventListener('DOMContentLoaded', function() {
  const playBtn = document.getElementById('play');
  const pauseBtn = document.getElementById('pause');

  playBtn.addEventListener('click', function() {
    playBtn.classList.add('d-none');
    pauseBtn.classList.remove('d-none');
  });

  pauseBtn.addEventListener('click', function() {
    pauseBtn.classList.add('d-none');
    playBtn.classList.remove('d-none');
  });
});