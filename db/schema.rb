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

ActiveRecord::Schema.define(version: 2018_07_30_002237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "artwork_collections", force: :cascade do |t|
    t.bigint "artwork_id"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_artwork_collections_on_artwork_id"
    t.index ["collection_id"], name: "index_artwork_collections_on_collection_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.integer "complexity"
    t.string "code"
    t.string "description"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fonts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "material_id"
    t.bigint "size_id"
    t.string "title"
    t.string "link"
    t.boolean "inactive", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_listings_on_material_id"
    t.index ["size_id"], name: "index_listings_on_size_id"
  end

  create_table "material_sizes", force: :cascade do |t|
    t.bigint "material_id"
    t.bigint "size_id"
    t.string "longest_dimension"
    t.string "thickness"
    t.string "weight"
    t.string "stands_unassisted"
    t.float "price"
    t.float "shipping"
    t.boolean "shippable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_material_sizes_on_material_id"
    t.index ["size_id"], name: "index_material_sizes_on_size_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "material_id"
    t.bigint "product_id"
    t.bigint "size_id"
    t.string "file_code"
    t.text "alt_text"
    t.boolean "showcase", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_photos_on_material_id"
    t.index ["product_id"], name: "index_photos_on_product_id"
    t.index ["size_id"], name: "index_photos_on_size_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sizes_on_name"
  end

  add_foreign_key "artwork_collections", "artworks"
  add_foreign_key "artwork_collections", "collections"
  add_foreign_key "listings", "materials"
  add_foreign_key "listings", "sizes"
  add_foreign_key "material_sizes", "materials"
  add_foreign_key "material_sizes", "sizes"
  add_foreign_key "photos", "materials"
  add_foreign_key "photos", "products"
  add_foreign_key "photos", "sizes"
end
