class Fotodiagnostico < ApplicationRecord
  belongs_to :usuario
  belongs_to :foto
  belongs_to :paciente
end
