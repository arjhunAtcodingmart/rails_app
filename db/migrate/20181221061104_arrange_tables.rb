class ArrangeTables < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :user_id, :integer
    rename_table :sellers, :products
  end
end
