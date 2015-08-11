class RenameNewletterColumnInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :newletter_sign_up, :newsletter_sign_up
  end
end
