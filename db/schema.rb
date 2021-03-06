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

ActiveRecord::Schema.define(version: 20190423001536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_banks", force: :cascade do |t|
    t.string   "category"
    t.string   "reviewStatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "creator"
  end

  create_table "question_banks", force: :cascade do |t|
    t.string   "category"
    t.text     "question"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "option5"
    t.integer  "answer"
    t.string   "reviewStatus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "creator"
    t.string   "explaination"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "current_place"
    t.boolean  "is_admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "reviewStatus"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "last_login_at"
  end

end
