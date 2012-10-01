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

ActiveRecord::Schema.define(:version => 20121001131759) do

  create_table "users", :force => true do |t|
    t.string   "email",                                  :null => false
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.string   "image_url"
    t.string   "time_zone",           :default => "UTC", :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.datetime "last_login_ip"
    t.datetime "activated_at"
    t.boolean  "active"
    t.boolean  "positive_admin",      :default => false
    t.string   "mobile_number"
    t.string   "telephone_number"
    t.boolean  "anonymous_bidder",    :default => false
    t.boolean  "bid_confirmation",    :default => true
    t.boolean  "share_confirmation",  :default => true
    t.boolean  "outbid_confirmation", :default => true
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token", :unique => true
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true
  add_index "users", ["positive_admin"], :name => "index_users_on_positive_admin"
  add_index "users", ["single_access_token"], :name => "index_users_on_single_access_token", :unique => true

end