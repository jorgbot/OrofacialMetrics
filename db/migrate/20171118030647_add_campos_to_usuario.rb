class AddCamposToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :nombres, :string
    add_column :usuarios, :empresa, :string
    add_column :usuarios, :telefono, :string
  end
end
