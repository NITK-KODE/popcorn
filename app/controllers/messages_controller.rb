class MessagesController < ApplicationController
    def new 
        @message = Message.new
    end

    def index
        @message = Message.new
        @messages = Message.all
    end
    def create
         
            @message = Message.create(user_id:current_user.id , message:message_params[:message])

            if @message.save
                ActionCable.server.broadcast 'room_channel' , {content:params[:message] , user_id: current_user.id , username:current_user.username}
            else
                redirect_to root_path
            end
            
    end

    private
    def message_params
        params.permit(:message, :authenticity_token, :commit)
    end
end
