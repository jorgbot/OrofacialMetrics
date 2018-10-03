class CreateSeguimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :seguimientos do |t|
      t.string :n_tecnica
      t.string :n_procedimiento
      t.string :n_frecuencia_aplicacion
      t.string :evolucion_foto
      t.string :resultado
      t.references :usuario, foreign_key: true
      t.references :paciente, foreign_key: true

      t.timestamps
    end
  end
end
