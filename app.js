function scrollToViewport(viewportId) {
  var element = document.getElementById(viewportId);
  element.scrollIntoView({ behavior: 'smooth' });
}