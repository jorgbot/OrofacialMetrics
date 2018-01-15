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

ActiveRecord::Schema.define(version: 20180115141300) do

  create_table "campodiagnosticos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tipo_grupo"
    t.string   "nombre"
    t.string   "valor"
    t.integer  "usuario_id"
    t.integer  "fotodiagnostico_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["fotodiagnostico_id"], name: "index_campodiagnosticos_on_fotodiagnostico_id", using: :btree
    t.index ["usuario_id"], name: "index_campodiagnosticos_on_usuario_id", using: :btree
  end

  create_table "consentimientos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "f_nacimiento"
    t.string   "c_menor"
    t.string   "tipo_documento"
    t.string   "documento"
    t.string   "na_representante"
    t.string   "r_tipo_documento"
    t.string   "r_documento"
    t.string   "direccion"
    t.string   "v_contenido"
    t.string   "c_tipo1"
    t.string   "c_tipo2"
    t.string   "c_tipo3"
    t.string   "c_tipo4"
    t.string   "c_tipo"
    t.date     "fecha"
    t.string   "correo"
    t.string   "telefono"
    t.string   "na_clinico"
    t.string   "correo_clinico"
    t.integer  "usuario_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["usuario_id"], name: "index_consentimientos_on_usuario_id", using: :btree
  end

  create_table "fotodiagnosticos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "f_evaluacion"
    t.string   "id_evaluacion"
    t.integer  "usuario_id"
    t.integer  "foto_id"
    t.integer  "paciente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["foto_id"], name: "index_fotodiagnosticos_on_foto_id", using: :btree
    t.index ["paciente_id"], name: "index_fotodiagnosticos_on_paciente_id", using: :btree
    t.index ["usuario_id"], name: "index_fotodiagnosticos_on_usuario_id", using: :btree
  end

  create_table "fotos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date     "f_subida"
    t.string   "foto_titulo"
    t.integer  "usuario_id"
    t.integer  "paciente_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "img_frontal_file_name"
    t.string   "img_frontal_content_type"
    t.integer  "img_frontal_file_size"
    t.datetime "img_frontal_updated_at"
    t.string   "img_lateral_file_name"
    t.string   "img_lateral_content_type"
    t.integer  "img_lateral_file_size"
    t.datetime "img_lateral_updated_at"
    t.index ["paciente_id"], name: "index_fotos_on_paciente_id", using: :btree
    t.index ["usuario_id"], name: "index_fotos_on_usuario_id", using: :btree
  end

  create_table "pacientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "genero"
    t.string   "tipo_documento"
    t.string   "documento"
    t.date     "f_nacimiento"
    t.string   "edad"
    t.string   "pais_nacimiento"
    t.string   "n_departamento"
    t.string   "n_ciudad"
    t.string   "aseguradora"
    t.string   "raza"
    t.string   "etnia"
    t.string   "pais_residencia"
    t.string   "r_departamento"
    t.string   "r_ciudad"
    t.string   "r_direccion"
    t.string   "estado"
    t.string   "pais_estancia"
    t.string   "e_departamento"
    t.string   "e_ciudad"
    t.string   "religion"
    t.string   "celular"
    t.string   "telefono"
    t.string   "correo"
    t.integer  "usuario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["usuario_id"], name: "index_pacientes_on_usuario_id", using: :btree
  end

  create_table "seguimientos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "n_tecnica"
    t.string   "n_procedimiento"
    t.string   "n_frecuencia_aplicacion"
    t.string   "evolucion_foto"
    t.string   "resultado"
    t.integer  "usuario_id"
    t.integer  "paciente_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "img_frontal_file_name"
    t.string   "img_frontal_content_type"
    t.integer  "img_frontal_file_size"
    t.datetime "img_frontal_updated_at"
    t.string   "img_lateral_file_name"
    t.string   "img_lateral_content_type"
    t.integer  "img_lateral_file_size"
    t.datetime "img_lateral_updated_at"
    t.index ["paciente_id"], name: "index_seguimientos_on_paciente_id", using: :btree
    t.index ["usuario_id"], name: "index_seguimientos_on_usuario_id", using: :btree
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.string   "nombres"
    t.string   "empresa"
    t.string   "telefono"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "campodiagnosticos", "fotodiagnosticos"
  add_foreign_key "campodiagnosticos", "usuarios"
  add_foreign_key "consentimientos", "usuarios"
  add_foreign_key "fotodiagnosticos", "fotos"
  add_foreign_key "fotodiagnosticos", "pacientes"
  add_foreign_key "fotodiagnosticos", "usuarios"
  add_foreign_key "fotos", "pacientes"
  add_foreign_key "fotos", "usuarios"
  add_foreign_key "pacientes", "usuarios"
  add_foreign_key "seguimientos", "pacientes"
  add_foreign_key "seguimientos", "usuarios"
end
