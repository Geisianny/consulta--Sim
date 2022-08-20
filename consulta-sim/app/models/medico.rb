class Medico < ApplicationRecord
  has_many :consultum, :dependent => :delete_all

  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :nomeCompleto, presence: true, length:{maximum: 50}
  validates :cpf, presence: true, length:{only_integer: true}, length:{is:11}, uniqueness: true
  validates :email, presence: true, length:{maximum: 200},format:{with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :especialidade, presence: true, length: {maximum:20}
  validates :numeroCRM, presence: true, length:{is: 5}, uniqueness: true


  end
