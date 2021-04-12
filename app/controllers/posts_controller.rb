class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new 
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def create
        @p = Post.new(post:params[:post] , user_id:current_user.id)
        if @p.save 
            redirect_to root_path
        else
            render root_path
        end
        
    end

    def like
        @post = Post.all.find(params[:id])
        Like.create(user_id:current_user.id , post_id:@post.id)
        redirect_to root_path
    end

    def comment
        
        @comment = Comment.new(comment:params[:comment] , post_id:params[:id] , user_id:current_user.id)
        if @comment.save 
            redirect_to "/posts/#{params[:id]}"
        else
            redirect_to
        end
    end

   
end
