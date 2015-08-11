class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :age_range, :string
    add_column :users, :phone, :string
    add_column :users, :newletter_sign_up, :boolean, default: false
  end
end
