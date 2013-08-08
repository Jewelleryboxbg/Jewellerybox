class RemoveTitleFromOrderForms < ActiveRecord::Migration
  def change
  	remove_column :order_forms, :title
  end
end
