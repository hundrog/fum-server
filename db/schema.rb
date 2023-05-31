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

ActiveRecord::Schema[7.0].define(version: 2023_05_25_232733) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "areas", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "reason", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.boolean "training", default: false, null: false
    t.boolean "job_posting", default: false, null: false
    t.text "justification"
    t.string "employee_name", default: "", null: false
    t.string "employee_number", default: "", null: false
    t.date "creation_date"
    t.date "termination_date"
    t.uuid "current_position_id", null: false
    t.uuid "new_position_id", null: false
    t.uuid "current_boss_id", null: false
    t.uuid "vacant_boss_id", null: false
    t.uuid "vacant_coordinator_id", null: false
    t.string "notify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["current_boss_id"], name: "index_formats_on_current_boss_id"
    t.index ["current_position_id"], name: "index_formats_on_current_position_id"
    t.index ["new_position_id"], name: "index_formats_on_new_position_id"
    t.index ["vacant_boss_id"], name: "index_formats_on_vacant_boss_id"
    t.index ["vacant_coordinator_id"], name: "index_formats_on_vacant_coordinator_id"
  end

  create_table "jwt_denylist", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "positions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.uuid "area_id", null: false
    t.integer "role", default: 0, null: false
    t.string "position", default: "", null: false
    t.boolean "coordinator", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_users_on_area_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "formats", "positions", column: "current_position_id"
  add_foreign_key "formats", "positions", column: "new_position_id"
  add_foreign_key "formats", "users", column: "current_boss_id"
  add_foreign_key "formats", "users", column: "vacant_boss_id"
  add_foreign_key "formats", "users", column: "vacant_coordinator_id"
end
