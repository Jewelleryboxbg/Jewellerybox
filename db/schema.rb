# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130818183548) do

  create_table "admins", :force => true do |t|
    t.string   "profile_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "order_forms", :force => true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "phone"
    t.string   "city"
    t.string   "address"
    t.boolean  "address_type", :default => false
    t.integer  "quantity",     :default => 1
    t.boolean  "shipped",      :default => false
  end

  add_index "order_forms", ["product_id"], :name => "index_order_forms_on_product_id"

  create_table "pictures", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  add_index "pictures", ["product_id"], :name => "index_pictures_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "item_id"
    t.integer  "discount"
    t.integer  "price"
    t.string   "price_class"
    t.integer  "quantity"
    t.string   "warranty"
    t.string   "guarantee"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "gallery_file_name"
    t.string   "gallery_content_type"
    t.integer  "gallery_file_size"
    t.datetime "gallery_updated_at"
    t.integer  "admin_id"
  end

end
