class PostsController < ActionController::Base
    def new 
        
    end
    
    def create
        @p = Post.new(title:params[:title] , post:params[:post] , user_id:current_user.id)
        if @p.save 
            redirect_to root_path
        else
            render root_path
        end
        
    end

   
end
