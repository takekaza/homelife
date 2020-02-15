$(function() {
  $('img.immain_middle--box--ul--li--link--content--photo--box--subimg').hover(function(){
  // "_thumb"を削った画像ファイル名を取得
  var selectedSrc = $(this).attr('src').replace(/^(.+)(\.gif|\.jpg|\.png+)$/, "$1"+"$2");

  // 画像入れ替え
  $('img.immain_middle--box--ul--li--link--content--photo--top--mainimg').stop().fadeOut(50);
  $(function(){
    $('img.immain_middle--box--ul--li--link--content--photo--top--mainimg').attr('src', selectedSrc);
    $('img.immain_middle--box--ul--li--link--content--photo--top--mainimg').stop().fadeIn(200);

    });
    // サムネイルの枠を変更
    $(this).css({"opacity":"1.2"});
    $(this).css({"box-shadow":" 0 2px 3px 0 #9E9E9E"});
  });
  
  // マウスアウトでサムネイル枠もとに戻す
  $('img.immain_middle--box--ul--li--link--content--photo--box--subimg').mouseout(function(){
    $(this).css({"opacity":""});
    $(this).css({"box-shadow":""});
  });
});
