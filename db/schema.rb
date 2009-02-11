# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090205142849) do

  create_table "clients", :force => true do |t|
    t.integer  "user_id"
    t.string   "handle"
    t.string   "endpoint"
    t.boolean  "local"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["endpoint"], :name => "index_clients_on_endpoint"
  add_index "clients", ["handle"], :name => "index_clients_on_handle"
  add_index "clients", ["user_id"], :name => "index_clients_on_user_id"

  create_table "clients_followers", :id => false, :force => true do |t|
    t.integer "client_id"
    t.integer "follower_id"
  end

  create_table "messages", :force => true do |t|
    t.text     "body"
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.datetime "created_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
