class AddReceiptFileFieldToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t. attachment :bike_receipt
    end
  end

  def self.down
    remove_attachement :bikes, :bike_receipt
  end
end
