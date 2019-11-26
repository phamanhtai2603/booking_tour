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

ActiveRecord::Schema.define(version: 2020_01_03_041213) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.text "avatar"
    t.string "active_status"
    t.string "activation_digest"
    t.string "remember_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "reviews_id", null: false
    t.integer "account_id"
    t.integer "review_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_comments_on_accounts_id"
    t.index ["reviews_id"], name: "index_comments_on_reviews_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "tours_id", null: false
    t.integer "tour_id"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tours_id"], name: "index_images_on_tours_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "reviews_id", null: false
    t.integer "account_id"
    t.integer "review_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_likes_on_accounts_id"
    t.index ["reviews_id"], name: "index_likes_on_reviews_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "account_id"
    t.integer "tour_id"
    t.datetime "start_day"
    t.datetime "end_day"
    t.integer "amount"
    t.float "total"
    t.string "status"
    t.string "have_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_orders_on_accounts_id"
  end

  create_table "rattings", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "tours_id", null: false
    t.integer "account_id"
    t.integer "tour_id"
    t.integer "order_id"
    t.float "star"
    t.text "comment"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_rattings_on_accounts_id"
    t.index ["tours_id"], name: "index_rattings_on_tours_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "account_id"
    t.integer "tour_id"
    t.text "title"
    t.text "content"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_reviews_on_accounts_id"
  end

  create_table "tours", force: :cascade do |t|
    t.integer "accounts_id", null: false
    t.integer "category_id"
    t.integer "account_id"
    t.text "title"
    t.text "content"
    t.string "image"
    t.float "avg_rate"
    t.integer "rate_amount"
    t.string "price"
    t.string "integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accounts_id"], name: "index_tours_on_accounts_id"
  end

end
