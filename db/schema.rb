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

ActiveRecord::Schema.define(version: 20170225031346) do

  create_table "achievements", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.integer  "value"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["name"], name: "index_achievements_on_name", unique: true
  end

  create_table "achievements_members", id: false, force: :cascade do |t|
    t.integer "member_id",      null: false
    t.integer "achievement_id", null: false
  end

  create_table "advertisements", force: :cascade do |t|
    t.date     "date"
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "member_id"
    t.index ["date", "reason"], name: "index_advertisements_on_date_and_reason", unique: true
    t.index ["member_id"], name: "index_advertisements_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "course"
    t.date     "join_date"
    t.date     "leave"
    t.string   "picture"
    t.integer  "role_id"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_members_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_roles_on_name", unique: true
  end

end
