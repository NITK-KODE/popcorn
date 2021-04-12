class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :set_user

    private
     def set_user
      if user_signed_in?
        cookies[:logged_id] = current_user.id || null
      
      end
     end

    
end
