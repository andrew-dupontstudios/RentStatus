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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141125202932) do

  create_table "properties", force: true do |t|
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id"

  create_table "units", force: true do |t|
    t.string   "name"
    t.float    "rent"
    t.string   "tenant0_last_name"
    t.string   "tenant0_phone"
    t.string   "tenant0_email"
    t.string   "tenant1_first_name"
    t.string   "tenant1_last_name"
    t.string   "tenant1_phone"
    t.string   "tenant1_email"
    t.string   "tenant2_first_name"
    t.string   "tenant2_last_name"
    t.string   "tenant2_phone"
    t.string   "tenant2_email"
    t.string   "tenant3_first_name"
    t.string   "tenant3_last_name"
    t.string   "tenant3_phone"
    t.string   "tenant3_email"
    t.boolean  "vacancy"
    t.integer  "property_id"
    t.string   "image0_file_name"
    t.string   "image0_content_type"
    t.integer  "image0_file_size"
    t.datetime "image0_updated_at"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "image6_file_name"
    t.string   "image6_content_type"
    t.integer  "image6_file_size"
    t.datetime "image6_updated_at"
    t.string   "image7_file_name"
    t.string   "image7_content_type"
    t.integer  "image7_file_size"
    t.datetime "image7_updated_at"
    t.string   "image8_file_name"
    t.string   "image8_content_type"
    t.integer  "image8_file_size"
    t.datetime "image8_updated_at"
    t.string   "image9_file_name"
    t.string   "image9_content_type"
    t.integer  "image9_file_size"
    t.datetime "image9_updated_at"
    t.string   "image10_file_name"
    t.string   "image10_content_type"
    t.integer  "image10_file_size"
    t.datetime "image10_updated_at"
    t.string   "image11_file_name"
    t.string   "image11_content_type"
    t.integer  "image11_file_size"
    t.datetime "image11_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tenant0_first_name"
  end

  add_index "units", ["property_id"], name: "index_units_on_property_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
