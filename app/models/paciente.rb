class Paciente < ApplicationRecord
  belongs_to :usuario
  has_many :fotos
  has_many :fotodiagnosticos
  has_many :seguimientos
end
