class OrderForm < ActiveRecord::Base
  belongs_to :product
  attr_accessible :email, :message, :name, :title, :product_id
end
