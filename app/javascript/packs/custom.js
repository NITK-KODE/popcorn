 $(document).on('turbolinks:load' , function(){
  var d = $('.chat-box');
  d.scrollTop(d.prop("scrollHeight"));
  console.log(d.prop("scrollHeight"));



 });
  