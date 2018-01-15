class CreateFotodiagnosticos < ActiveRecord::Migration[5.0]
  def change
    create_table :fotodiagnosticos do |t|
      t.date :f_evaluacion
      t.string :id_evaluacion
      t.references :usuario, foreign_key: true
      t.references :foto, foreign_key: true
      t.references :paciente, foreign_key: true

      t.timestamps
    end
  end
end
