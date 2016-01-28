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

ActiveRecord::Schema.define(version: 20160128021325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields_jobs", force: :cascade do |t|
    t.integer "job_id"
    t.integer "field_id"
  end

  add_index "fields_jobs", ["field_id"], name: "index_fields_jobs_on_field_id", using: :btree
  add_index "fields_jobs", ["job_id"], name: "index_fields_jobs_on_job_id", using: :btree

  create_table "formats", force: :cascade do |t|
    t.string "name"
  end

  create_table "formats_jobs", id: false, force: :cascade do |t|
    t.integer "job_id"
    t.integer "format_id"
  end

  add_index "formats_jobs", ["format_id"], name: "index_formats_jobs_on_format_id", using: :btree
  add_index "formats_jobs", ["job_id"], name: "index_formats_jobs_on_job_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs_transfer_types", id: false, force: :cascade do |t|
    t.integer "transfer_type_id"
    t.integer "job_id"
  end

  add_index "jobs_transfer_types", ["job_id"], name: "index_jobs_transfer_types_on_job_id", using: :btree
  add_index "jobs_transfer_types", ["transfer_type_id"], name: "index_jobs_transfer_types_on_transfer_type_id", using: :btree

  create_table "transfer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fields_jobs", "fields"
  add_foreign_key "fields_jobs", "jobs"
  add_foreign_key "formats_jobs", "formats"
  add_foreign_key "formats_jobs", "jobs"
  add_foreign_key "jobs_transfer_types", "jobs"
  add_foreign_key "jobs_transfer_types", "transfer_types"
end
