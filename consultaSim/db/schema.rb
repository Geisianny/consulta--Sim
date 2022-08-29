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

ActiveRecord::Schema[7.0].define(version: 2022_08_15_024653) do
  create_table "consulta", force: :cascade do |t|
    t.date "data"
    t.time "horario"
    t.integer "Paciente_id", null: false
    t.integer "Medico_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Medico_id"], name: "index_consulta_on_Medico_id"
    t.index ["Paciente_id"], name: "index_consulta_on_Paciente_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.integer "paciente_id"
    t.string "cep"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "complemento"
    t.index ["paciente_id"], name: "index_enderecos_on_paciente_id", unique: true
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nomeCompleto"
    t.string "cpf"
    t.string "email"
    t.string "especialidade"
    t.string "numeroCRM"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "Consulta_id", null: false
    t.integer "Paciente_id", null: false
    t.integer "medico_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Consulta_id"], name: "index_menus_on_Consulta_id"
    t.index ["Paciente_id"], name: "index_menus_on_Paciente_id"
    t.index ["medico_id"], name: "index_menus_on_medico_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nomeCompleto"
    t.date "dataDeNascimento"
    t.string "cpf"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "consulta", "Medicos"
  add_foreign_key "consulta", "Pacientes"
  add_foreign_key "enderecos", "pacientes"
  add_foreign_key "menus", "Consulta", column: "Consulta_id"
  add_foreign_key "menus", "Pacientes"
  add_foreign_key "menus", "medicos"
end
