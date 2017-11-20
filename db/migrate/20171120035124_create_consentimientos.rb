class CreateConsentimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :consentimientos do |t|
      t.string :nombre
      t.string :apellido
      t.date :f_nacimiento
      t.string :c_menor
      t.string :tipo_documento
      t.string :documento
      t.string :na_representante
      t.string :r_tipo_documento
      t.string :r_documento
      t.string :direccion
      t.string :v_contenido
      t.string :c_tipo1
      t.string :c_tipo2
      t.string :c_tipo3
      t.string :c_tipo4
      t.string :c_tipo
      t.date :fecha
      t.string :correo
      t.string :telefono
      t.string :na_clinico
      t.string :correo_clinico
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
