class OrderForm < ActiveRecord::Base
  belongs_to :product
  attr_accessible :email, :message, :name, :product_id, :phone, :city, :address, :address_type, :quantity

  validates :name, presence: true
  validates :product_id, presence: true
  validates :phone, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :address_type, presence: true
  validates :quantity, presence: true
end
