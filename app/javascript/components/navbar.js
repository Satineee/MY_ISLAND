const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-blue');
        navbar.classList.add('nav-shadow');
      } else {
        navbar.classList.remove('navbar-lewagon-blue');
        navbar.classList.remove('nav-shadow');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };