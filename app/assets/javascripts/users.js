/*
$(window).load(function() {
  $('#slider').nivoSlider();
});
*/
// Or if you are using Turbolinks

$(document).on('page:change', function () {
  $('#slider').nivoSlider();
});
