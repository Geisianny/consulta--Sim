require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Nao deve criar um cadastro de medico sem adicionar as informacoes basicas' do
    medico = Medico.new
    assert_not medico.save
  end

  test 'Deve criar um cadastro de medico corretamente' do
    medico = Medico.new nomeCompleto: 'Geisianny teste', cpf: '12345678910', email: 'geisiannyteste@gmail.com',
                        especialidade: 'neuro',numeroCRM:'12345'
    assert medico.save
  end

end
