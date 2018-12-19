class UserTypeBuyerController < ApplicationController
    before_action :require_login

    def create

    end

    def disp
        @seller = Seller.all
    end
end