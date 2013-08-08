class AddInfoToOrderForms < ActiveRecord::Migration
  def change
    add_column :order_forms, :phone, :integer
    add_column :order_forms, :city, :string
    add_column :order_forms, :address, :string
    add_column :order_forms, :address_type, :boolean, :default => false
    add_column :order_forms, :quantity, :integer, :default => 1
  end
end
