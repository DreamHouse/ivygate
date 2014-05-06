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

ActiveRecord::Schema.define(version: 20140506022027) do

  create_table "contact_requests", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comments"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "phoneArea"
    t.string   "phoneLocal"
    t.string   "phoneNumber"
    t.string   "bestTimeReach"
    t.string   "contactType"
    t.string   "squareFeet"
    t.string   "bedrooms"
    t.string   "bathrooms"
    t.string   "address"
    t.string   "street"
    t.string   "unitOrSuite"
    t.string   "city"
    t.string   "state"
    t.string   "postalCode"
    t.string   "county"
    t.string   "area"
    t.string   "interests"
    t.string   "features"
  end

end
