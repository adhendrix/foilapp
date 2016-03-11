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

ActiveRecord::Schema.define(version: 20160226040545) do

  create_table "foil_calculators", force: :cascade do |t|
    t.decimal  "sheet_quantity"
    t.decimal  "sheets_per_parent_sheet"
    t.decimal  "inches_per_parent_sheet"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "foil_items", force: :cascade do |t|
    t.integer  "foil_used_length"
    t.integer  "name_id"
    t.integer  "make_id"
    t.integer  "length_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "foil_items", ["length_id"], name: "index_foil_items_on_length_id"
  add_index "foil_items", ["make_id"], name: "index_foil_items_on_make_id"
  add_index "foil_items", ["name_id"], name: "index_foil_items_on_name_id"

  create_table "lengths", force: :cascade do |t|
    t.string   "foil_length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string   "foil_make"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "foil_name"
    t.string   "pigment_code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
