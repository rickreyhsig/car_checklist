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

ActiveRecord::Schema.define(version: 20150514204332) do

  create_table "nv_checklists", force: true do |t|
    t.boolean  "stock_in"
    t.boolean  "pdi"
    t.string   "pdi_completed_by"
    t.text     "notes"
    t.boolean  "ready_to_show"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id"
  end

  create_table "uv_checklists", force: true do |t|
    t.boolean  "msi_cpo"
    t.string   "msi_cpo_completed_by"
    t.text     "notes"
    t.boolean  "paint_wheels"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id"
  end

  create_table "vehicles", force: true do |t|
    t.string   "ext_color"
    t.string   "int_color"
    t.decimal  "lat"
    t.decimal  "long"
    t.string   "make"
    t.string   "mileage"
    t.string   "model"
    t.string   "vehicle_type"
    t.decimal  "price"
    t.string   "stocknum"
    t.string   "vin"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "checklist_id"
  end

end
