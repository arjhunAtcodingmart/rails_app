class UserTypeSellerController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :require_login
    def show
        @seller = Product.find(params['id'])
    end

    def create
        @seller = Product.create(:productName =>params['name'],:productQuantity => params['quantity'],:productPrice => params["price"],:actualPrice => params[:acPrice], :sellingPrice => params[:sellPrice],:discountPercentage => params[:discount], :productDescription => params['description'],:user_id => current_user.id)
        
        @seller.productImage = params['image']
        @seller.save!

        # render :json  => {:status => @seller}
    end

    def update
        @seller = Product.find params[:id]
        @seller.update_attributes(:productQuantity => params['user_type_seller']['product_left'])
        render :json  => {:status => @seller}

    end

    def destroy
        @user = User.find(params[:id])
        status = @user.destroy
        render :json => { status: status}
    end
end