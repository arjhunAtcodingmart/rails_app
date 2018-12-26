class Product < ApplicationRecord
    mount_uploader :productImage, ImageUploaderUploader
    serialize :productImage, JSON
    has_many :users
    has_one :buyer_product 

end
