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

ActiveRecord::Schema.define(version: 2020_11_16_044833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "condition"
    t.integer "manufacturer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.bigint "season_id", null: false
    t.bigint "team_id", null: false
    t.boolean "purchased", default: false
    t.bigint "seller_id"
    t.bigint "buyer_id"
    t.index ["buyer_id"], name: "index_cards_on_buyer_id"
    t.index ["season_id"], name: "index_cards_on_season_id"
    t.index ["seller_id"], name: "index_cards_on_seller_id"
    t.index ["team_id"], name: "index_cards_on_team_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "read", default: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "seller_id", null: false
    t.bigint "buyer_id", null: false
    t.bigint "card_id", null: false
    t.string "striperef"
    t.string "receipt"
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["card_id"], name: "index_orders_on_card_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "description"
    t.integer "rating"
    t.boolean "as_buyer"
    t.boolean "as_seller"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "street"
    t.string "suburb"
    t.string "state"
    t.string "country"
    t.string "postcode"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cards", "seasons"
  add_foreign_key "cards", "teams"
  add_foreign_key "cards", "users", column: "buyer_id"
  add_foreign_key "cards", "users", column: "seller_id"
  add_foreign_key "orders", "cards"
  add_foreign_key "orders", "cards", column: "seller_id"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "ratings", "users"
end
