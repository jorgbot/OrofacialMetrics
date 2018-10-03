class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.string :tipo_documento
      t.string :documento
      t.date :f_nacimiento
      t.string :edad
      t.string :pais_nacimiento
      t.string :n_departamento
      t.string :n_ciudad
      t.string :aseguradora
      t.string :raza
      t.string :etnia
      t.string :pais_residencia
      t.string :r_departamento
      t.string :r_ciudad
      t.string :r_direccion
      t.string :estado
      t.string :pais_estancia
      t.string :e_departamento
      t.string :e_ciudad
      t.string :religion
      t.string :celular
      t.string :telefono
      t.string :correo
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
