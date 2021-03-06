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

ActiveRecord::Schema.define(version: 20170829070658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "city"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.text "body"
    t.bigint "restraunt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restraunt_id"], name: "index_comments_on_restraunt_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
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
    t.bigint "cuisine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cuisine_id"], name: "index_restraunts_on_cuisine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "curator"
  end

  add_foreign_key "comments", "restraunts"
  add_foreign_key "comments", "users"
  add_foreign_key "restraunts", "cuisines"
end
