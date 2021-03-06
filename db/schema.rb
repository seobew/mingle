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

ActiveRecord::Schema.define(version: 20180529160814) do

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "views"
    t.integer "downloads"
    t.boolean "is_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.integer "photo_file_size"
    t.datetime "photo_updated_at"
    t.string "sample_file_name"
    t.string "sample_content_type"
    t.integer "sample_file_size"
    t.datetime "sample_updated_at"
  end

  create_table "participations", force: :cascade do |t|
    t.integer "content_id"
    t.string "user_name"
    t.boolean "is_recommend"
    t.boolean "is_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["content_id"], name: "index_participations_on_content_id"
  end

end
