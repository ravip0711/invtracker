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

ActiveRecord::Schema.define(version: 20141003045304) do

  create_table "flipflops", force: true do |t|
    t.date     "last_rcvd_date"
    t.string   "dcs"
    t.string   "vc"
    t.string   "desc1"
    t.string   "desc2"
    t.string   "attrstyle"
    t.integer  "size"
    t.integer  "oh_qty"
    t.integer  "oh_ext_cost"
    t.integer  "oh_ext_retail"
    t.integer  "sold_qty"
    t.integer  "sold_ext_cost"
    t.integer  "sold_mgr"
    t.integer  "weeks_of_supply"
    t.integer  "report_sell_thru"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
