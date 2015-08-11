class AddMoreAttrToUser < ActiveRecord::Migration
  def change
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :state_province, :string
    add_column :users, :zip_postal_code, :string
    add_column :users, :country, :string
  end
end
