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

ActiveRecord::Schema.define(version: 2019_02_14_005634) do

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

  create_table "lessons_tips", id: false, force: :cascade do |t|
    t.integer "lesson_id", null: false
    t.integer "tip_id", null: false
    t.index ["lesson_id", "tip_id"], name: "index_lessons_tips_on_lesson_id_and_tip_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "score"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "link"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tips_on_user_id"
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
    t.string "type"
    t.string "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "user_role_id"
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

end
