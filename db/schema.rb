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

ActiveRecord::Schema.define(version: 20131007153736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: true do |t|
    t.string   "city"
    t.string   "country"
    t.date     "date"
    t.string   "title"
    t.text     "description"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "days", ["trip_id"], name: "index_days_on_trip_id", using: :btree

  create_table "trips", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "cover"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["user_id"], name: "index_trips_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

end
