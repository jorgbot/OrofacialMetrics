class Paciente < ApplicationRecord
  belongs_to :usuario
  has_many :fotos
  has_many :fotodiagnosticos
end
