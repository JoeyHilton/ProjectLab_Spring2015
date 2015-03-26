$(function() {
    $( ".panel-heading" ).click(function() {
      $( "#panel-for-project-" + $(this).attr('value')) .slideToggle(500);
    });
});