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

ActiveRecord::Schema.define(version: 20191122193555) do

  create_table "poders", force: :cascade do |t|
    t.integer  "dano"
    t.integer  "defesa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokebolas", force: :cascade do |t|
    t.string   "nome"
    t.text     "caracteristica"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "raridade"
    t.string   "treinador"
    t.string   "fraqueza"
    t.string   "habilidade"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "treinador_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treinadors", force: :cascade do |t|
    t.string   "nome"
    t.integer  "idade"
    t.string   "sexo"
    t.string   "especialidade"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
