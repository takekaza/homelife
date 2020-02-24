$(function(){
  $(".textarea-de").on('keydown keyup keypress change blur',function(){
    var valueLength = $(this).val().length;
    var limitNum = 1000 - valueLength
    if ( limitNum >= 1 ) {
      $("#num").html(limitNum);
      $("#text-count").removeClass('over');
    } else if ( limitNum <= 0 ) {
      $("#num").html('0');
      $("#text-count").addClass('over');
    }
  });
});