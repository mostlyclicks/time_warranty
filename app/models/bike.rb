class Bike < ActiveRecord::Base
  belongs_to :user

  has_attached_file :bike_image, styles: { large: "1200x800#", medium: "600x400#", thumb: "100x100#" }#, default_url: "/images/:style/missing.png"
  has_attached_file :bike_receipt, styles: { large_r: "800x1150#", medium_r: "425x550#", thumb_r: "100x100#" }#, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bike_image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :bike_receipt, content_type: /\Aimage\/.*\Z/
  # ['image/jpeg', 'image/png', 'image/gif', 'application/pdf']

end
