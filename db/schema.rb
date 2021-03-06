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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curators", id: :integer, default: nil, force: :cascade do |t|
    t.string "fullname", limit: 100
    t.string "companyname", limit: 150
    t.string "credits", limit: 255
    t.string "description", limit: 2000
  end

  create_table "elements", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 50
    t.string "color", limit: 50
  end

  create_table "genres", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 50
    t.string "color", limit: 50
  end

  create_table "track_elements", id: false, force: :cascade do |t|
    t.integer "track_id", null: false
    t.integer "element_id", null: false
  end

  create_table "track_genres", id: :integer, default: nil, force: :cascade do |t|
    t.integer "track_id", null: false
    t.integer "genre_id", null: false
  end

  create_table "tracks", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.string "artist", limit: 100, null: false
    t.string "producers", limit: 250
    t.string "mixengineer", limit: 100
    t.string "masterengineer", limit: 100
    t.date "releasedate", null: false
    t.string "imagesrc", limit: 250
    t.string "description", limit: 10485760
    t.integer "collectionid"
  end

  create_table "users", id: false, force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "email", limit: 50, null: false
    t.string "password_digest", limit: 50, null: false
    t.string "role", limit: 20, null: false
  end

  add_foreign_key "track_elements", "elements", name: "trackelements_elementsid_fk"
  add_foreign_key "track_elements", "tracks", name: "trackelements_trackid_fk"
  add_foreign_key "track_genres", "genres", name: "trackgenres_genreid_fk"
  add_foreign_key "track_genres", "tracks", name: "trackgenres_trackid_fk"
  add_foreign_key "tracks", "curators", column: "curatorid", name: "curatorid_fk"
end
