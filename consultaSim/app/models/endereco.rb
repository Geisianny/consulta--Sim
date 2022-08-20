class Endereco < ApplicationRecord
  belongs_to :paciente

  validates :cep, presence: true, length: {is: 8}
  validates :cidade, presence: true, length: {minimum: 5}
  validates :logradouro, presence: true, length: {minimum: 5}
  validates :bairro, presence: true, length: {minimum: 5}
  validates :complemento, presence: true, length: {minimum: 5}


end
