scroll_bottom = function() {
  if ($('#messages').length > 0) {
    console.log($('#messages').scrollTop($('#messages')[0].scrollHeight));
  }
}