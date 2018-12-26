class CreateBuyerProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :buyer_products do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :reason
      t.boolean :status
      t.timestamps
    end
  end
end
