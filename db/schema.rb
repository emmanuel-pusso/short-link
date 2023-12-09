# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_09_035525) do
  create_table "links", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "slug"
    t.string "type"
    t.datetime "expiration_date_time"
    t.boolean "visited", default: false
    t.string "password_link_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "base_url"
    t.index ["slug"], name: "index_links_on_slug"
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_users_on_username"
  end

  create_table "visits", force: :cascade do |t|
    t.integer "link_id"
    t.datetime "date_visit"
    t.string "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_visits_on_link_id"
  end

  add_foreign_key "links", "users"
  add_foreign_key "visits", "links"
end
