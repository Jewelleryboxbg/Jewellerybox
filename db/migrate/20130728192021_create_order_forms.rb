class CreateOrderForms < ActiveRecord::Migration
  def change
    create_table :order_forms do |t|
      t.references :product
      t.string :name
      t.string :email
      t.string :title
      t.text :message

      t.timestamps
    end
    add_index :order_forms, :product_id
  end
end
