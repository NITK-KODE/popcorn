class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user   
    end

    def feed
        @post = Post.all
    end
end
