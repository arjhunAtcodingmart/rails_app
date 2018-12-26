class UserTypeBuyerController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :require_login

    def create
        @purchase = BuyerProduct.create(:user_id => current_user.id,:product_id=> params['user_type_buyer']['product_id'],:status => true,:quantity => params['user_type_buyer']['selected_quantity'])
        render :json => { status: @purchase}
    end

    def update
        @seller = BuyerProduct.find(params[:id])
        @status = @seller.update_attributes(:status => false,:reason => params['user_type_buyer']['reason'])
        render :json => { status: @status}
    end

    def disp
        @seller = Product.all
    end

    def order
        @user = User.find(params[:id])
        @buyer_details = []
        @buyer_details = @user.buyer_products.includes(:product => {})
        @buyer_details = @buyer_details.where.not(:status => false)
    end

    def cancelOrder
        @seller = Product.all        
    end
end