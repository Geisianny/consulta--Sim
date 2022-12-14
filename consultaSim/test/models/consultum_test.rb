require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "Nao deve criar uma consulta sem medico" do
    paciente = Paciente.new nomeCompleto: "Paciente 1",dataDeNascimento: "28/08/2000",
                            cpf: "11111111111", email: "paciente1@gmail.com", endereco_attributes:{cidade: "Sao Paulo",
       logradouro: "Rua 4", complemento: "casa ", bairro: "Flores", cep:"88888888"}

    assert paciente.save

    consulta = Consultum.new data:"13/09/2022", horario: "15:00", Paciente_id: paciente.id
    
    assert_not consulta.save
  end

  test "Nao deve criar uma consulta sem paciente" do
    medico = Medico.new nomeCompleto: "Medico 1", cpf: "77777777777", email: "medico1@gmail.com", especialidade: "neuro",
    numeroCRM:"12345"

    assert medico.save

    consulta = Consultum.new horario: " 16:00", Medico_id: medico.id

    assert_not consulta.save
  end

end
