import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    let chatbox = document.querySelector(".chat-box")
    let chatform = document.querySelector(".chat-form")
    let messageInput = document.querySelector(".message-box")

    console.log(data);

    console.log(typeof chatbox.dataset.userId)
    let message = document.createElement("DIV")
    let is_current_user = data.user_id=== +chatbox.dataset.userId
    message.classList.add("flex")
    message.classList.add("flex-row")
    if(is_current_user)
      message.classList.add("justify-end")
    else
      message.classList.add("justify-start")

    message.innerHTML = `<p class="message-text text-sm font-light  inline bg-${is_current_user?'blue':'green'}-300  p-3 mt-2 mb-2 rounded-t-full rounded-${is_current_user?'bl':'br'}-full">
          ${data.content}
        </p>`

    chatbox.append(message);
    chatbox.scrollIntoView({ behavior: "smooth", block: "end" })

    chatform.reset()

    // $('form')[0].reset();
    // var d = $('.chat-box');
    // d.scrollTop(d.prop("scrollHeight"));

  },

});
