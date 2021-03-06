import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    scroll_bottom();
    submit_message();
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#message-container').append(data.content);
    scroll_bottom();
  }
});
