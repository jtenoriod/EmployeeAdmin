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

ActiveRecord::Schema.define(version: 20170207134959) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "ciudads", force: :cascade do |t|
    t.string   "domicilio"
    t.string   "ciudad"
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.string   "tipoContrato"
    t.date     "fechaIngreso"
    t.date     "fechaContrato"
    t.integer  "diasPlazoFijo"
    t.date     "primerVencimiento"
    t.date     "renovacionContrato"
    t.integer  "empleado_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["empleado_id"], name: "index_contratos_on_empleado_id"
  end

  create_table "costos", force: :cascade do |t|
    t.integer  "sueldoPactado"
    t.integer  "sueldoBase"
    t.integer  "sueldoTotal"
    t.integer  "empleado_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["empleado_id"], name: "index_costos_on_empleado_id"
  end

  create_table "cuadrillas", force: :cascade do |t|
    t.string   "nombreCuadrilla"
    t.string   "jefeCuadrilla"
    t.text     "comentarios"
    t.string   "estado"
    t.date     "fechaInicio"
    t.integer  "obra_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "fechaTermino"
    t.index ["obra_id"], name: "index_cuadrillas_on_obra_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombreEmpleado"
    t.string   "cargo"
    t.string   "especialidad"
    t.boolean  "art22"
    t.string   "nacionalidad"
    t.string   "rut"
    t.boolean  "alojamiento"
    t.string   "tipoContrato"
    t.integer  "edad"
    t.boolean  "cargaFamiliar"
    t.string   "estado"
    t.string   "fono"
    t.date     "fechaNacimiento"
    t.string   "afp"
    t.boolean  "traslado"
    t.boolean  "almuerzo"
    t.date     "fechaIngreso"
    t.string   "salud"
    t.string   "estadoCivil"
    t.string   "experiencia"
    t.string   "estudios"
    t.text     "notas"
    t.integer  "cuadrilla_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cuadrilla_id"], name: "index_empleados_on_cuadrilla_id"
  end

  create_table "obras", force: :cascade do |t|
    t.string   "nombreObra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "obras_users", id: false, force: :cascade do |t|
    t.integer "obra_id", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
