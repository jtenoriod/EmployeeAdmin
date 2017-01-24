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

ActiveRecord::Schema.define(version: 20170124184340) do

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
    t.text     "fechaInicio"
    t.text     "fechaTermino"
    t.integer  "obra_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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

end
