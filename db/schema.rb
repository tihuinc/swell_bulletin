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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130613160952) do

  create_table "surf_spots", :force => true do |t|
    t.string   "name"
    t.integer  "msw_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "country_id"
    t.integer  "global_region_id"
    t.integer  "division_id"
    t.integer  "county_id"
  end

  add_index "surf_spots", ["country_id"], :name => "index_surf_spots_on_country_id"
  add_index "surf_spots", ["county_id"], :name => "index_surf_spots_on_county_id"
  add_index "surf_spots", ["division_id"], :name => "index_surf_spots_on_division_id"
  add_index "surf_spots", ["global_region_id"], :name => "index_surf_spots_on_global_region_id"
  add_index "surf_spots", ["msw_id"], :name => "index_surf_spots_on_msw_id"

end
