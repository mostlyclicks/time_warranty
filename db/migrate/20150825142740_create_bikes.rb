class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :bike_model
      t.string :bike_other
      t.string :serial_number
      t.date :date_purchased
      t.string :bike_dealer
      t.integer :bike_saddle_height
      t.integer :bike_saddle_bar
      t.integer :bike_bar_drop
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :bikes, :users
  end
end
