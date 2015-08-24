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

ActiveRecord::Schema.define(version: 20150824202733) do

  create_table "architectures", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "builders", force: true do |t|
    t.integer  "architecture_id"
    t.string   "hostname"
    t.string   "owner"
    t.string   "location"
    t.datetime "lastheard"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "osbuild"
  end

  create_table "builds", force: true do |t|
    t.integer  "architecture_id"
    t.integer  "builder_id"
    t.integer  "recipe_id"
    t.datetime "issued"
    t.datetime "completed"
    t.text     "result"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "packages", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "repo_id"
    t.integer  "architecture_id"
    t.integer  "latestrev"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.integer  "revision"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.text     "lint",       limit: 255
    t.integer  "lintret"
  end

  create_table "repos", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "lastrefresh"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
