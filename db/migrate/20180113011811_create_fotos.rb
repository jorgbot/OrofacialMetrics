class CreateFotos < ActiveRecord::Migration[5.0]
  def change
    create_table :fotos do |t|
      t.date :f_subida
      t.string :foto_titulo
      t.references :usuario, foreign_key: true
      t.references :paciente, foreign_key: true

      t.timestamps
    end
  end
end
