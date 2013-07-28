class Product < ActiveRecord::Base
  has_many :pictures
  has_many :order_forms
  attr_accessible :description, :discount, :guarantee, :item_id, :price, :price_class, :quantity, :title, :warranty, :gallery
  has_attached_file :gallery, :styles => { :medium => "200x200>", :thumb => "125x125>" }, :default_url => "/images/:style/logo.png"

  validates :title, presence: true
  validates :description, presence: true
  validates :item_id, presence: true, uniqueness: true
  validates :price, presence: true
  validates :price_class, presence: true
  validates :quantity, presence: true
  validates :gallery, attachment_presence: true
end
