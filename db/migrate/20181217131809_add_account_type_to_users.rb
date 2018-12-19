class AddAccountTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :accountType, :string
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :age, :number
    add_column :users, :phoneNo, :number
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :country, :string

  end
end
