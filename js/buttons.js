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