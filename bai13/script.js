function scrollLeft() {
  const container = document.querySelector('.scroll-content');
  container.scrollBy({ left: -150, behavior: 'smooth' });
}

function scrollRight() {
  const container = document.querySelector('.scroll-content');
  container.scrollBy({ left: 150, behavior: 'smooth' });
}
