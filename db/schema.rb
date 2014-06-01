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

ActiveRecord::Schema.define(version: 20140530220412) do

  create_table "athletes", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "image_url"
    t.integer "sport_id"
    t.string  "twitter_name"
    t.string  "position"
    t.string  "team_id"
  end

  create_table "brands", force: true do |t|
    t.string "name"
    t.string "logo_url"
  end

  create_table "products", force: true do |t|
    t.string  "url"
    t.integer "athlete_id"
    t.string  "name"
    t.string  "picture"
    t.integer "brand_id"
  end

  create_table "sports", force: true do |t|
    t.string "sport_name"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.integer "sport_id"
    t.string  "logo"
  end

end
