class AdminController < ApplicationController
    before_action :require_login
    
    def show
        @user = User.find(params[:id])
        @buyer_details = []
        @seller_details = []
        @buyer_details = @user.buyer_products.includes(:product => {})
        @seller_details = @user.products.all
    end

    def userDisplay
        @user = User.all
        @user = @user.where.not(:accountType => 'admin')
    end
end