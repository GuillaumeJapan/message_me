scroll_bottom = function() {
  if ($('#messages').length > 0) {
    console.log($('#messages').scrollTop($('#messages')[0].scrollHeight));
  }
}

submit_message = function() {
  $('#message_body').on('keydown', function(e) {
    if (e.key == 'Enter') {
      $('button').trigger("click");
      e.target.value = "";
    }
  })
}