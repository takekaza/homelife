$(function(){
　$(window).fadeIn(function (){
    $('.show_middle--box--ul--lishow').each(function(){
        var elemPos = $(this).offset().top;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (windowHeight){
            $(this).addClass('effect-scroll');
        }
    });
　});
});