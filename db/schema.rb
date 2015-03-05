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

ActiveRecord::Schema.define(version: 20150303062338) do

  create_table "calendar_events", force: :cascade do |t|
    t.integer  "year"
    t.integer  "type"
    t.string   "name"
    t.string   "shortname"
    t.date     "date"
    t.integer  "quarter"
    t.text     "details"
  end

  add_index "calendar_events", ["year", "date"], name: "index_calendar_events_on_year_and_date"
  add_index "calendar_events", ["year"], name: "index_calendar_events_on_year"

  create_table "coops", force: :cascade do |t|
    t.string   "slug"
    t.string   "name"
  end

  add_index "coops", ["slug"], name: "index_coops_on_slug", unique: true

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.boolean  "active"
    t.integer  "priority"
    t.string   "address1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
  end

  add_index "families", ["active"], name: "index_families_on_active"

  create_table "persons", force: :cascade do |t|
    t.integer  "familyid"
    t.string   "lastname"
    t.string   "firstname"
    t.integer  "position"
    t.date     "birthday"
    t.string   "youthgroup"
    t.integer  "grade"
    t.string   "comment"
    t.string   "email"
    t.string   "password"
  end

  add_index "persons", ["email"], name: "index_persons_on_email", unique: true

  create_table "years", force: :cascade do |t|
    t.integer  "coop_id"
    t.date     "start"
    t.date     "publish"
    t.date     "lockclassinfo"
    t.date     "waitlistopen"
    t.string   "name"
  end

  add_index "years", ["coop_id"], name: "index_years_on_coop_id"

end
