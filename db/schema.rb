# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_31_171609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "location"
    t.string "children_ages"
    t.string "range_possible_hours"
    t.string "gender"
    t.string "experience"
    t.string "school"
    t.string "age_range_kids_sit"
    t.string "first_name"
    t.string "last_name"
    t.string "county"
    t.string "cell_number"
    t.string "services_needed_or_provided"
    t.integer "yes_transit"
    t.integer "no_transit"
    t.integer "age_16"
    t.integer "age_17"
    t.integer "age_18_up"
    t.integer "max_number_kids_sit"
    t.integer "zip_code"
    t.integer "hero"
    t.integer "volunteer"
    t.integer "babysitting"
    t.integer "grocery_shopping"
    t.integer "e_learning_assistance"
    t.integer "sunday"
    t.integer "monday"
    t.integer "tuesday"
    t.integer "wednesday"
    t.integer "thursday"
    t.integer "friday"
    t.integer "saturday"
    t.integer "morning"
    t.integer "afternoon"
    t.integer "evening"
    t.integer "night"
    t.integer "other"
    t.integer "c_morning"
    t.integer "c_afternoon"
    t.integer "c_evening"
    t.integer "c_night"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
