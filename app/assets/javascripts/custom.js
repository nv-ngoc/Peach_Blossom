$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(document).ready(function () {
  if (window.File && window.FileList && window.FileReader) {
    $("#input_files").on("change", function (e) {
      var files = e.target.files,
        filesLength = files.length;
      for (var i = 0; i < filesLength; i++) {
        var f = files[i]
        var fileReader = new FileReader();
        fileReader.onload = (function (e) {
          var file = e.target;
          $("<span class=\"pip\">" +
            "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
            "<br/><span class=\"remove\">Remove</span>" +
            "</span>").insertAfter("#input_files");
          $(".remove").click(function () {
            $(this).parent(".pip").remove();
          });
        });
        fileReader.readAsDataURL(f);
      }
    });
  } else {
    alert("Your browser doesn't support to File API")
  }
});

$(document).ready(function(){
  CKEDITOR.config.height = 700;
  if ($('textarea').length > 0) {
    var data = $('.ckeditor');
    $.each(data, function(i) {
      CKEDITOR.replace(data[i].id)
    });
  }
});

$(document).ready(function() {
  $("#post_product_id").select2({
    width: '200',
    height: '30'
  });
});

// Project 2

$(document).ready(function() {
  $(".menutren ul li:nth-child(1) a").on("click", function(event) {
    event.preventDefault();

    $("html, body").animate({scrollTop: $(".chapter1").offset().top}, 1000);
  });

  $(".menutren ul li:nth-child(2) a").on("click", function(event) {
    event.preventDefault();

    $("html, body").animate({scrollTop: $(".chapter2").offset().top}, 1000);
  });

  $(".menutren ul li:nth-child(3) a").on("click", function(event) {
    event.preventDefault();

    $("html, body").animate({scrollTop: $(".chapter3").offset().top}, 1000);
  });

  $(".menutren ul li:nth-child(4) a").on("click", function(event) {
    event.preventDefault();

    $("html, body").animate({scrollTop: $(".chapter4").offset().top}, 1000);
  });

  $(".nutlentren").on("click", function(event) {
    event.preventDefault();

    $("html, body").animate({scrollTop: 0}, 1000);
  });
});

// Project 3

$(document).ready(function() {
  $(".tdkhoi").click(function(event) {
    $(this).toggleClass("xanh");

    $(this).next().slideToggle(800);

    $("html, body").animate({scrollTop: $(this).offset().top},900,"easeOutQuart");
  });

  $(".ndkhoi").slideUp();
});

// Project 4

$(document).ready(function() {
  TweenMax.staggerFrom($(".tinto"), 1, { left:100, opacity:0 }, 0.1)

  $(".noidungthem").slideUp(0);
  $(".nutload").click(function(event) {
    $(".noidungthem").slideDown(300);
    TweenMax.staggerFrom($(".noidungthem .tinto"), 1, { left:100, opacity:0 }, 0.1)
  });
});

// Project 5

