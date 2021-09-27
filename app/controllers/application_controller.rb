class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    # skip_before_action :verify_authenticity_token

    before_action :set_user

    private

    def user_signed_in?
      current_user
    end

    def set_user
      if user_signed_in?
        cookies.signed[:current_user] = current_user.id
      else
        cookies.delete(:current_user)
      end
     end

    
end
