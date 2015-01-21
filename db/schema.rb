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

ActiveRecord::Schema.define(version: 20150120031828) do

  create_table "jushos", force: true do |t|
    t.integer  "todofuken_id"
    t.integer  "shichoson_id"
    t.string   "sonotajusho"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jushos", ["shichoson_id"], name: "index_jushos_on_shichoson_id"
  add_index "jushos", ["todofuken_id"], name: "index_jushos_on_todofuken_id"

  create_table "shichosons", force: true do |t|
    t.integer  "todofuken_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shichosons", ["todofuken_id"], name: "index_shichosons_on_todofuken_id"

  create_table "todofukens", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
