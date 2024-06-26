# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_23_073241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "name", default: "", null: false
    t.string "class", default: "", null: false
    t.string "guild"
    t.integer "level", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "fiesta_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.text "icon", null: false
    t.string "description", default: "This item doesn't have a description.", null: false
    t.integer "end", default: 0, null: false
    t.integer "spr", default: 0, null: false
    t.integer "int", default: 0, null: false
    t.integer "str", default: 0, null: false
    t.integer "dex", default: 0, null: false
  end

  create_table "fiesta_sockets", force: :cascade do |t|
    t.bigint "fiesta_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fiesta_item_id"], name: "index_fiesta_sockets_on_fiesta_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "note", default: "", null: false
    t.integer "bin"
    t.bigint "user_id", null: false
    t.bigint "fiesta_item_id", null: false
    t.integer "end", default: 0, null: false
    t.integer "spr", default: 0, null: false
    t.integer "int", default: 0, null: false
    t.integer "str", default: 0, null: false
    t.integer "dex", default: 0, null: false
    t.integer "hobs", default: 0, null: false
    t.index ["fiesta_item_id"], name: "index_items_on_fiesta_item_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "discord"
    t.integer "discord_status", default: 0
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
