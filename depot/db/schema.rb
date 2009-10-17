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

ActiveRecord::Schema.define(:version => 20091013033825) do

  create_table "accessories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beddings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cabinets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "catname"
    t.integer  "catid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chairs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coffee_tables", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dinings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lightings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size"
    t.integer  "catid"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "sofas", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
