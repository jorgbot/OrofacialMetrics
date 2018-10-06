class CreateCampodiagnosticos < ActiveRecord::Migration[5.0]
  def change
    create_table :campodiagnosticos do |t|
      t.string :tipo_grupo
      t.string :nombre
      t.string :valor
      t.references :usuario, foreign_key: true
      t.references :fotodiagnostico, foreign_key: true

      t.timestamps
    end
  end
end
