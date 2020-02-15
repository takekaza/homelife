var instas = ['ryota_para','sabon.ismart','watashino_setsuyaku','relivers_yourmystar','kamechan_ismart','eringo__']
$(function(){
  let list = $("#list");

  function appendList(word){
    let item = $('<li class="list">').append(word);
    list.append(item)
  }

  $("#submit").on("click", function(){
    let input = $("#keyword").val();
    let reg = new RegExp("^" + input);

    $(".list").remove();

    $.each(instas, function(i,insta){
      if (insta.match(reg)){
        appendList(insta);
      }
    });
    
    if ($(".list").length === 0){
      appendList("一致する方はいません。");
    }
  });
});