class Foto < ApplicationRecord
  belongs_to :usuario
  belongs_to :paciente

  has_attached_file :img_frontal, styles: { medium: "600x600>", thumb: "200x200>" }
  validates_attachment_content_type :img_frontal, content_type: /\Aimage\/.*\z/

  has_attached_file :img_lateral, styles: { medium: "600x600>", thumb: "200x200>" }
  validates_attachment_content_type :img_lateral, content_type: /\Aimage\/.*\z/
end
