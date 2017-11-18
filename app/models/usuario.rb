class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nombres, presence: true, length: {maximum: 50}
  validates :empresa, presence: true, length: {maximum: 50}
  validates :telefono, presence: true, length: {maximum: 10}

end
