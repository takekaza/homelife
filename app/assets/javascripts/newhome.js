$(function(){

  const buildFileField = (index)=>{
    const html =`
                  <div data-index="${index}" class="js-file_group" style="
                  position: relative; top: 2px;">
                    <label type="file" class="upload__image--icon" for="home_images_attributes_${index}_url"
                     name="home[images_attributes][${index}][url]" style="cursor: pointer; width: 20px;
                      height: 20px; font-size: 18px;">
                      <i class="fas fa-image upload__image--icon--i"></i>
                      <input type="file"
                      name="home[images_attributes][${index}][url]"
                      id="home_images_attributes_${index}_url" >
                    </label>
                    
                    <div class="js-remove"style="width: 50px;font-size: 14px;bottom: 2px;
                    left: 1px;
                    position: relative; cursor: pointer;">削除</div>
                  </div>
                `;
    return html;

  }
  const buildImg = (index,url)=>{
    const html =`<img data-index="${index}" src="${url}" width="100px" height="64px">`;
    return html;
  }
  let fileIndex =[1,2,3,4,5,6,7,8,9,10];
  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);
  $('.hidden-destroy').hide(); lastIndex

// 値が変わると変数htmlが追加されindexの値が１増える

  $('.upload__image').on('change','.upload__image--icon', function(e){
    const targetIndex =$(this).parent().data('index');
    const file =e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('url', blobUrl);
    }else{
      $('.previews').append(buildImg(targetIndex,blobUrl));
      $('.upload__image').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)

    }
  });
  
  $('.js-file_group').on('click','.js-remove',function(){
    
    const targetIndex = $(this).parent().data('index')
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);

    if (hiddenCheck) hiddenCheck.prop('checked', true);
    $(this).parent().remove();
    if ($('.upload__image--icon').length == 0) $ ('.upload__image').append(buildFileField(fileIndex[0]));
    $(`img[data-index="${targetIndex}"]`).remove();
  });
});
