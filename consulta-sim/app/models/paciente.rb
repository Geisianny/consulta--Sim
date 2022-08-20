class Paciente < ApplicationRecord
  has_many :consultum, :dependent => :delete_all

  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, allow_destroy: true

  validates :nomeCompleto, presence: true, length:{maximum: 50}
  validates :dataDeNascimento, presence: true
  validates :cpf, presence: true, length:{only_integer: true}, length:{is:11}, uniqueness: true
  validates :email, presence: true, length:{maximum: 200}, uniqueness: true
  validate :validarData


  def validarData
    if dataDeNascimento.present? && dataDeNascimento > Date.today
      errors.add(:dataNascimento, "Data invalida")
    end
  end




end
