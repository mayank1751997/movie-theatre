# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20181001074956) do

  create_table "audis", force: :cascade do |t|
    t.integer "num"
    t.integer "no_of_seats"
    t.integer "theatre_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "no_of_seats"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "catagory"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "time"
    t.integer "seats"
    t.integer "movie_id"
  end

  create_table "theatres", force: :cascade do |t|
    t.string  "name"
    t.string  "address"
    t.integer "phone_no"
  end

  create_table "tickets", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.integer "mobile_no"
  end

end
