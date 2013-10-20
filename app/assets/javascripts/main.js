$(document).ready(function(){
  $( ".browse-scroll" ).click(function() {
    $('html, body').animate({
      scrollTop: $("#first-feature").offset().top
    }, 1000);
  });
});




