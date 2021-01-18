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

ActiveRecord::Schema.define(version: 2020_11_13_151838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "biology"
    t.boolean "hero"
    t.boolean "villain"
    t.string "description"
    t.bigint "user_id", null: false
    t.bigint "story_idea_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["story_idea_id"], name: "index_characters_on_story_idea_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id", null: false
    t.bigint "story_idea_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["story_idea_id"], name: "index_comments_on_story_idea_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "story_ideas", force: :cascade do |t|
    t.string "name"
    t.string "setting"
    t.string "plot"
    t.string "conflict"
    t.string "theme"
    t.string "pov"
    t.string "tone"
    t.string "style"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_story_ideas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "story_ideas"
  add_foreign_key "characters", "users"
  add_foreign_key "comments", "story_ideas"
  add_foreign_key "comments", "users"
  add_foreign_key "story_ideas", "users"
end
