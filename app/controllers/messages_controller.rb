class MessagesController < ApplicationController
    def new 
        @message = Message.new
    end

    def create
        respond_to do |format|
            @message = Message.create(user_id:current_user.id , message:params[:content])
            if @message.save 
                ActionCable.server.broadcast 'room_channel' , {content:"test content" , user_id: 54}
                format.html
                format.js
            end
        end
    end
end
