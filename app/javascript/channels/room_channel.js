import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    console.log('this is good');
    // Called when the subscription is ready for use on the server
    
    
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this 
    console.log(data);
    var sent_message = "<p class='user-message sent'>";
    var rcvd_message = "<p class='user-message'>";

  
    if(data.user_id === parseInt(document.cookie.substring(10))){
      $( ".chat-box" ).append( sent_message + data.content.message  +"</p>" );
      
    }
    else{
      $( ".chat-box" ).append( rcvd_message +  data.content.message + "<br><span class='sender'>" + data.username + "</span>" +"</p>" );
    }

    $('form')[0].reset();
    var d = $('.chat-box');
    d.scrollTop(d.prop("scrollHeight"));



    

  }
});
