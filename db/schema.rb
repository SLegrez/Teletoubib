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

ActiveRecord::Schema.define(version: 2021_03_15_103701) do

  create_table "horaires", force: :cascade do |t|
    t.boolean "disponible"
    t.boolean "indisponible"
    t.integer "medecin_id"
    t.date "date"
    t.datetime "debut"
    t.datetime "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medecins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ville"
    t.text "adresse"
    t.integer "code_postal"
    t.integer "telephone"
    t.boolean "approved", default: false, null: false
    t.index ["approved"], name: "index_medecins_on_approved"
    t.index ["email"], name: "index_medecins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_medecins_on_reset_password_token", unique: true
  end

  create_table "meetings", force: :cascade do |t|
    t.string "genre"
    t.datetime "debut"
    t.datetime "fin"
    t.string "lien_visio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "patient_id"
    t.integer "creneau_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "prenom"
    t.string "nom"
    t.date "date_de_naissance"
    t.text "adresse"
    t.string "telephone"
    t.string "code_postal"
    t.string "ville"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

end
