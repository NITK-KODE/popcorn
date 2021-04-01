class MessagesController < ApplicationController
    def new 
        @message = Message.new
    end

    def index
        @message = Message.new
    end
    def create
     
            @message = Message.create(user_id:current_user.id , message:params[:message])
            if @message.save 
                ActionCable.server.broadcast 'room_channel' , {content:params[:message] , user_id: current_user.id}
            else
                redirect_to root_path

            end
            
    end
end
