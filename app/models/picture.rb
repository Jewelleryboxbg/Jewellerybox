class Picture < ActiveRecord::Base
  belongs_to :product
  attr_accessible :asset

  has_attached_file :asset, styles: {
  	large: "800x800>", medium: "300x200>", small: "260x180>", thumb: "80x80#"
  }

  validates_attachment_presence :asset
end
