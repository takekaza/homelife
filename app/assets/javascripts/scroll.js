$(function(){
　$(window).scroll(function (){
    $('.immain_middle--box--ul--li').each(function(){
        var elemPos = $(this).offset().top;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (scroll > elemPos - windowHeight + 200){
            $(this).addClass('effect-scroll');
        }
    });
　});
});