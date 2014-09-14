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

ActiveRecord::Schema.define(version: 20140914173725) do

  create_table "abilities", force: true do |t|
    t.integer  "character_id"
    t.string   "name",         null: false
    t.text     "description"
    t.integer  "value"
    t.integer  "modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abilities", ["character_id"], name: "index_abilities_on_character_id"

  create_table "campaigns", force: true do |t|
    t.integer  "user_id"
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invite_id"
  end

  add_index "campaigns", ["user_id"], name: "index_campaigns_on_user_id"

  create_table "characters", force: true do |t|
    t.integer  "user_id"
    t.string   "name",                        null: false
    t.text     "description"
    t.integer  "race"
    t.integer  "type"
    t.integer  "weight",          default: 0
    t.integer  "height",          default: 0
    t.integer  "level",           default: 0
    t.integer  "experience",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campaign_id"
    t.string   "invite_id"
    t.integer  "campaign_status", default: 0
  end

  add_index "characters", ["campaign_id"], name: "index_characters_on_campaign_id"
  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "items", force: true do |t|
    t.integer  "character_id"
    t.integer  "campaign_id"
    t.string   "name",         null: false
    t.text     "description"
    t.integer  "weight"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["campaign_id"], name: "index_items_on_campaign_id"
  add_index "items", ["character_id"], name: "index_items_on_character_id"

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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
