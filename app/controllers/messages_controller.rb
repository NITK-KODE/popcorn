class MessagesController < ApplicationController
    def new 
        @message = Message.new
    end

    def create
     
            @message = Message.create(user_id:current_user.id , message:params[:content])
            if @message.save 
                ActionCable.server.broadcast 'room_channel' , {content:"test content" , user_id: 54}
            else
                redirect_to root_path

            end
       
    end
end
