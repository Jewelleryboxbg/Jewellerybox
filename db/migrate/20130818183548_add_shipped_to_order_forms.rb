class AddShippedToOrderForms < ActiveRecord::Migration
  def change
    add_column :order_forms, :shipped, :boolean, default: false
  end
end
