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

ActiveRecord::Schema.define(version: 20160706080738) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "articles", force: :cascade do |t|
    t.text     "titre"
    t.text     "description"
    t.text     "category"
    t.text     "objet1col1"
    t.text     "objet1col2"
    t.text     "objet2col1"
    t.text     "objet2col2"
    t.text     "objet3col1"
    t.text     "objet3col2"
    t.text     "objet4col1"
    t.text     "objet4col2"
    t.text     "objet5col1"
    t.text     "objet5col2"
    t.text     "objet6col1"
    t.text     "objet6col2"
    t.text     "objet7col1"
    t.text     "objet7col2"
    t.text     "objet8col1"
    t.text     "objet8col2"
    t.text     "image_file_name"
    t.text     "image_content_type"
    t.integer  "image_file_size"
    t.text     "image_updated_at"
    t.text     "title"
    t.string   "image1"
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "plant_file_name"
    t.string   "plant_content_type"
    t.integer  "plant_file_size"
    t.datetime "plant_updated_at"
    t.string   "plant1_file_name"
    t.string   "plant1_content_type"
    t.integer  "plant1_file_size"
    t.datetime "plant1_updated_at"
    t.string   "plant2_file_name"
    t.string   "plant2_content_type"
    t.integer  "plant2_file_size"
    t.datetime "plant2_updated_at"
    t.string   "plant3_file_name"
    t.string   "plant3_content_type"
    t.integer  "plant3_file_size"
    t.datetime "plant3_updated_at"
    t.string   "plant4_file_name"
    t.string   "plant4_content_type"
    t.integer  "plant4_file_size"
    t.datetime "plant4_updated_at"
    t.string   "plant5_file_name"
    t.string   "plant5_content_type"
    t.integer  "plant5_file_size"
    t.datetime "plant5_updated_at"
  end

  create_table "missions", force: :cascade do |t|
    t.string "titre"
    t.text   "description"
    t.string "elements1"
    t.string "elements2"
    t.string "elements3"
    t.string "elements4"
    t.string "elements5"
    t.string "elements6"
    t.string "elements7"
    t.string "elements8"
    t.string "elements9"
    t.string "elements10"
    t.string "elements11"
    t.string "elements12"
    t.string "elements13"
    t.string "elements14"
    t.string "elements15"
    t.string "elements16"
    t.string "elements17"
    t.string "elements18"
    t.string "elements19"
  end

  create_table "ressources", force: :cascade do |t|
    t.string "titre"
    t.text   "description"
    t.string "elements1"
    t.string "elements2"
    t.string "elements3"
    t.string "elements4"
    t.string "elements5"
    t.string "elements6"
    t.string "elements7"
    t.string "elements8"
    t.string "elements9"
    t.string "elements10"
  end

  create_table "societes", force: :cascade do |t|
    t.string "titre"
    t.text   "paragraphe1"
    t.text   "paragraphe2"
    t.text   "paragraphe3"
    t.text   "paragraphe4"
    t.text   "paragraphe5"
    t.text   "paragraphe6"
    t.text   "paragraphe7"
    t.text   "paragraphe8"
  end

end
