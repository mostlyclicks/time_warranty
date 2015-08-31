class AddAttachmentBikeImageToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t.attachment :bike_image
    end
  end

  def self.down
    remove_attachment :bikes, :bike_image
  end
end
