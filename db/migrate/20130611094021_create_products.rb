class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :item_id
      t.integer :discount
      t.integer :price
      t.string :price_class
      t.integer :quantity
      t.string :warranty
      t.string :guarantee

      t.timestamps
    end
  end
end
