$(function(){

  var navFlg = false;
  $('.menu').on('click',function(){
      $('.menu__line').toggleClass('active');
      $('.navbar').fadeToggle();
      if(!navFlg){
          $('.navbar__menu--box').each(function(i){
              $(this).delay(i*200).animate({
                  'margin-left' : 0,
                  'opacity' : 1,
              },500);
          });
          navFlg = true;
      }
      else{
          $('.navbar__menu--box').css({
              'margin-left' : 100,
              'opacity' : 0,
          });
          navFlg = false;
      }
  });
});