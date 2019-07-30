$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(function() {
  Dropzone.options.add_product = {
    init: function (e) {
      var myDropzone = this;

      $('#submit-all').on("click", function() {
        myDropzone.processQueue();
      });
    }
  };
})
