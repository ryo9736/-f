ActiveRecord::Schema.define(version: 20190813015017) do

  create_table "properties", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "adress"
    t.string   "age"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "route_name"
    t.string   "station_name"
    t.string   "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "property_id"
    t.index ["property_id"], name: "index_stations_on_property_id"
  end

end
