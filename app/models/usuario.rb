class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  validates :nombres, presence: true, length: {maximum: 50}

  has_many :consentimientos
  has_many :pacientes
  has_many :fotos
  has_many :fotodiagnosticos
  has_many :campodiagnosticos
  has_many :seguimientos

end
