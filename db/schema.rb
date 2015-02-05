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

ActiveRecord::Schema.define(version: 20150127181403) do

  create_table "apts", force: true do |t|
    t.string   "apt_id",                   null: false
    t.string   "apt_name",                 null: false
    t.date     "start_date",               null: false
    t.date     "comp_date",                null: false
    t.string   "apt_type",                 null: false
    t.integer  "no_of_blocks"
    t.integer  "no_of_villa"
    t.string   "street"
    t.integer  "unit"
    t.string   "postal_code",              null: false
    t.string   "city",                     null: false
    t.string   "state",                    null: false
    t.string   "country",                  null: false
    t.integer  "patta_no",                 null: false
    t.string   "regd_office",              null: false
    t.integer  "total_sq_ft",              null: false
    t.string   "facing",                   null: false
    t.integer  "length_sq_ft",             null: false
    t.integer  "breadth_sq_ft",            null: false
    t.float    "urban_tax",     limit: 24, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "flats", force: true do |t|
    t.string   "flat_no",                null: false
    t.integer  "size",                   null: false
    t.float    "uds",         limit: 24, null: false
    t.integer  "balcony"
    t.float    "gsize",       limit: 24
    t.string   "cpark"
    t.string   "penthouse"
    t.integer  "nbed",                   null: false
    t.integer  "nbath",                  null: false
    t.integer  "nkitch",                 null: false
    t.integer  "nhall",                  null: false
    t.integer  "ndin",                   null: false
    t.integer  "npooja",                 null: false
    t.date     "pur_date",               null: false
    t.string   "first_owner"
    t.string   "gn_rent"
    t.integer  "f_mem",                  null: false
    t.float    "ws_tax",      limit: 24, null: false
    t.float    "p_tax",       limit: 24, null: false
    t.date     "due_date",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "apt_id"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
