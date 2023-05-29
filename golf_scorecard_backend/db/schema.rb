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

ActiveRecord::Schema[7.0].define(version: 2023_05_28_233533) do
  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "yardage"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scorecards", force: :cascade do |t|
    t.string "player_name"
    t.integer "hole_1"
    t.integer "hole_2"
    t.integer "hole_3"
    t.integer "hole_4"
    t.integer "hole_5"
    t.integer "hole_6"
    t.integer "hole_7"
    t.integer "hole_8"
    t.integer "hole_9"
    t.integer "hole_10"
    t.integer "hole_11"
    t.integer "hole_12"
    t.integer "hole_13"
    t.integer "hole_14"
    t.integer "hole_15"
    t.integer "hole_16"
    t.integer "hole_17"
    t.integer "hole_18"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tee_id", default: 1
    t.index ["tee_id"], name: "index_scorecards_on_tee_id"
  end

  create_table "tees", force: :cascade do |t|
    t.string "name"
    t.integer "yardage"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "scorecards", "tees"
end
