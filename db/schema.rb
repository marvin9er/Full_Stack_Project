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

ActiveRecord::Schema.define(version: 2021_03_15_155950) do

  create_table "languages", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.string "lang_type"
    t.string "typical_speakers"
    t.string "script"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.integer "speed"
    t.string "alignment"
    t.string "age"
    t.string "size"
    t.string "size_desc"
    t.string "language_desc"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subraces", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.string "race"
    t.string "desc"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "race_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.string "desc"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
