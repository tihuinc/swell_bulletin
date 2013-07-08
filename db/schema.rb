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

ActiveRecord::Schema.define(:version => 20130708234825) do

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "divisions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "global_regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "subdivisions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surf_conditions", :force => true do |t|
    t.integer  "timestamp"
    t.integer  "local_timestamp"
    t.integer  "issue_timestamp"
    t.integer  "faded_rating"
    t.integer  "solid_rating"
    t.integer  "min_breaking_height"
    t.integer  "max_breaking_height"
    t.string   "swell_direction"
    t.integer  "swell_period"
    t.string   "swell_unit"
    t.integer  "wind_speed"
    t.integer  "wind_direction"
    t.integer  "wind_gusts"
    t.string   "wind_unit"
    t.integer  "pressure"
    t.integer  "temperature"
    t.integer  "weather_id"
    t.string   "pressure_unit"
    t.string   "temperature_unit"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "surf_spot_id"
  end

  add_index "surf_conditions", ["surf_spot_id"], :name => "index_surf_conditions_on_surf_spot_id"

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
    t.integer  "subdivision_id"
  end

  add_index "surf_spots", ["country_id"], :name => "index_surf_spots_on_country_id"
  add_index "surf_spots", ["county_id"], :name => "index_surf_spots_on_county_id"
  add_index "surf_spots", ["division_id"], :name => "index_surf_spots_on_division_id"
  add_index "surf_spots", ["global_region_id"], :name => "index_surf_spots_on_global_region_id"
  add_index "surf_spots", ["msw_id"], :name => "index_surf_spots_on_msw_id"

end
