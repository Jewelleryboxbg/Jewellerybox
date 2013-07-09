class AddAttachmentGalleryToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :gallery
    end
  end

  def self.down
    drop_attached_file :products, :gallery
  end
end
