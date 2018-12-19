class Seller < ApplicationRecord
    mount_uploader :productImage, ImageUploaderUploader
    serialize :productImage, JSON
end
