class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :user
      t.text :password

      t.timestamps
    end
  end
end
