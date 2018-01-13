class AddAttachmentImgFrontalImgLateralToFotos < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.attachment :img_frontal
      t.attachment :img_lateral
    end
  end

  def self.down
    remove_attachment :fotos, :img_frontal
    remove_attachment :fotos, :img_lateral
  end
end
