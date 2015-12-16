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

ActiveRecord::Schema.define(version: 20151215032724) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "assets", force: :cascade do |t|
    t.string   "storage_uid",          limit: 255
    t.string   "storage_name",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "storage_width",        limit: 4
    t.integer  "storage_height",       limit: 4
    t.float    "storage_aspect_ratio", limit: 24
    t.integer  "storage_depth",        limit: 4
    t.string   "storage_format",       limit: 255
    t.string   "storage_mime_type",    limit: 255
    t.string   "storage_size",         limit: 255
  end

  create_table "keyword_lists", force: :cascade do |t|
    t.string  "name",         limit: 45, null: false
    t.string  "description",  limit: 45
    t.integer "status",       limit: 4,  null: false
    t.string  "created_at",   limit: 45
    t.string  "updated_at",   limit: 45
    t.integer "keyword_type", limit: 4,  null: false
  end

  add_index "keyword_lists", ["id"], name: "id_UNIQUE", unique: true, using: :btree
  add_index "keyword_lists", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "realtime_monitor_results", force: :cascade do |t|
    t.text    "Title",            limit: 65535
    t.text    "Href",             limit: 65535
    t.text    "Duration",         limit: 65535
    t.text    "DurationType",     limit: 65535
    t.integer "Page",             limit: 8
    t.text    "Time",             limit: 65535
    t.text    "Engine",           limit: 65535
    t.text    "Source",           limit: 65535
    t.text    "KeyMatch",         limit: 65535
    t.text    "VideoKey",         limit: 65535
    t.integer "realtime_task_id", limit: 4
  end

  add_index "realtime_monitor_results", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "realtime_tasks", force: :cascade do |t|
    t.string  "status",          limit: 45
    t.string  "name",            limit: 45
    t.string  "lengthtype",      limit: 45
    t.string  "engine",          limit: 45
    t.integer "keyword_list_id", limit: 4
  end

  add_index "realtime_tasks", ["id"], name: "id_UNIQUE", unique: true, using: :btree
  add_index "realtime_tasks", ["keyword_list_id"], name: "keyword_list_id_idx", using: :btree

  create_table "video_result", force: :cascade do |t|
    t.text    "Title",        limit: 65535
    t.text    "Href",         limit: 65535
    t.text    "Duration",     limit: 65535
    t.text    "DurationType", limit: 65535
    t.integer "Page",         limit: 8
    t.text    "Time",         limit: 65535
    t.text    "Engine",       limit: 65535
    t.text    "Source",       limit: 65535
    t.text    "KeyMatch",     limit: 65535
    t.text    "VideoKey",     limit: 65535
  end

  create_table "video_result_test", id: false, force: :cascade do |t|
    t.text    "Title",        limit: 65535
    t.text    "Href",         limit: 65535
    t.text    "Duration",     limit: 65535
    t.text    "DurationType", limit: 65535
    t.integer "Page",         limit: 8
    t.text    "Time",         limit: 65535
    t.text    "Engine",       limit: 65535
    t.text    "Source",       limit: 65535
    t.text    "KeyMatch",     limit: 65535
    t.text    "VideoKey",     limit: 65535
  end

  add_foreign_key "realtime_tasks", "keyword_lists", name: "keyword"
end
