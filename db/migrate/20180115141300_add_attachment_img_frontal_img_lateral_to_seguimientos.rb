class AddAttachmentImgFrontalImgLateralToSeguimientos < ActiveRecord::Migration
  def self.up
    change_table :seguimientos do |t|
      t.attachment :img_frontal
      t.attachment :img_lateral
    end
  end

  def self.down
    remove_attachment :seguimientos, :img_frontal
    remove_attachment :seguimientos, :img_lateral
  end
end
