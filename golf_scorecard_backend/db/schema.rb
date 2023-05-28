# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_28_013311) do
  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "holes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["holes_id"], name: "index_courses_on_holes_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "people_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_games_on_course_id"
    t.index ["people_id"], name: "index_games_on_people_id"
  end

  create_table "holes", force: :cascade do |t|
    t.string "hole_name"
    t.integer "hole_number"
    t.integer "hole_distance"
    t.integer "hole_par"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.index ["course_id"], name: "index_holes_on_course_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "person_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "courses", "holes", column: "holes_id"
  add_foreign_key "games", "courses"
  add_foreign_key "games", "people", column: "people_id"
  add_foreign_key "holes", "courses"
end
