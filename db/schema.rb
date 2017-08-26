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

ActiveRecord::Schema.define(version: 20170826082235) do

  create_table "areas", force: :cascade do |t|
    t.string "city"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "cname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restraunts", force: :cascade do |t|
    t.string "title"
    t.string "phone"
    t.string "address"
    t.decimal "cost"
    t.integer "heads"
    t.string "image_url"
    t.integer "cuisine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cuisine_id"], name: "index_restraunts_on_cuisine_id"
  end

end