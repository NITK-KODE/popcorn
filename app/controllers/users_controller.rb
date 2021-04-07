class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user   
    end

    def feed
        @post = Post.all
    end

    def show
        @user = User.find(params[:id])
    end
end
