class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :productName
      t.text :productImage
      t.integer :productQuantity
      t.float :productPrice
      t.float :actualPrice
      t.float :sellingPrice
      t.float :discountPercentage
      t.string :productDescription

      t.timestamps
    end
  end
end
