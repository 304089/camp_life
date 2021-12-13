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

ActiveRecord::Schema.define(version: 2021_12_13_131154) do

  create_table "gears", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.string "introduction"
    t.integer "amount", null: false
    t.string "gear_image_id"
    t.integer "genre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_gears", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "gear_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.date "departure_date", null: false
    t.date "return_date", null: false
    t.string "place", null: false
    t.time "check_in_time"
    t.time "check_out_time"
    t.text "memo"
    t.integer "member", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "profile_image_id"
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
