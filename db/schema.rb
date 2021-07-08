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

ActiveRecord::Schema.define(version: 2021_07_08_204857) do

  create_table "college_applications", force: :cascade do |t|
    t.string "name"
    t.string "app_type"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "college_application_id", null: false
    t.string "college_name"
    t.datetime "app_deadline"
    t.float "app_fee"
    t.datetime "visit_date"
    t.string "visit_impressions"
    t.string "essay_topic"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["college_application_id"], name: "index_plans_on_college_application_id"
  end

  add_foreign_key "plans", "college_applications"
end
