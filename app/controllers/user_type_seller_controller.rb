class UserTypeSellerController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :require_login
    def show
        @seller = Seller.find(params['id'])
    end

    def create
        @seller = Seller.create(:productName =>params['name'],:productQuantity => params['quantity'],:productPrice => params["price"],:actualPrice => params[:acPrice], :sellingPrice => params[:sellPrice],:discountPercentage => params[:discount], :productDescription => params['description'])
        
        @seller.productImage = params['image']
        @seller.save!

        # render :json  => {:status => @seller}
    end
    def destroy
        @user = User.find(params[:id])
        status = @user.destroy
        render :json => { status: status}
    end
end