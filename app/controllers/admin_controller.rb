class AdminController < ApplicationController
    before_action :require_login
    
    def userDisplay
        @user = User.all
    end
end