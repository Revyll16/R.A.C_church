document.addEventListener('scroll', () => {
  const body = document.body;
  const navbar = document.querySelector('.navbar');
  if (window.scrollY > 50) {
    body.classList.add('scrolled');
  } else {
    body.classList.remove('scrolled');
  }
});
