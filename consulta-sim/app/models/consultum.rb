class Consultum < ApplicationRecord
  belongs_to :Paciente
  belongs_to :Medico

  validates_associated :Medico
  validates_associated :Paciente
  validates :horario, presence: true
  validate :validarData


  def validarData
    if data.present? && data < Date.today
      errors.add(:data, "Data invalida!");
    end

  end

end
