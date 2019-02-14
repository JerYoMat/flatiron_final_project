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

ActiveRecord::Schema.define(version: 2019_02_14_002418) do

  create_table "course_orders", force: :cascade do |t|
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "topic_id"
    t.integer "course_order_id"
    t.integer "unit_id"
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_order_id"], name: "index_lessons_on_course_order_id"
    t.index ["topic_id"], name: "index_lessons_on_topic_id"
    t.index ["unit_id"], name: "index_lessons_on_unit_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.integer "unit_id"
    t.integer "course_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_order_id"], name: "index_topics_on_course_order_id"
    t.index ["unit_id"], name: "index_topics_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "image_path"
    t.integer "course_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_order_id"], name: "index_units_on_course_order_id"
  end

  create_table "user_roles", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end