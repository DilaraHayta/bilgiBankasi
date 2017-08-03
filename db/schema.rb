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

ActiveRecord::Schema.define(version: 20170801162021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "body",        null: false
    t.integer  "user_id"
    t.integer  "solution_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["solution_id"], name: "index_comments_on_solution_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "sozlesme_yoneticisi"
    t.string   "sozlesme_no"
    t.datetime "sozlesme_baslangıc"
    t.datetime "sozlesme_bitis"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "devices", force: :cascade do |t|
    t.string   "cihaz_tipi"
    t.string   "marka"
    t.string   "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string   "sol_type"
    t.string   "title"
    t.string   "body"
    t.string   "version"
    t.integer  "customer_id"
    t.integer  "device_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_solutions_on_customer_id", using: :btree
    t.index ["device_id"], name: "index_solutions_on_device_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             null: false
    t.string   "last_name",              null: false
    t.string   "email",                  null: false
    t.string   "password_digest"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["email"], name: "index_users_on_email", using: :btree
  end

  add_foreign_key "comments", "solutions"
  add_foreign_key "comments", "users"
  add_foreign_key "solutions", "customers"
end
