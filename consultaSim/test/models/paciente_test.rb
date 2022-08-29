require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "Nao deve salvar paciente sem o nome preenchido" do
    paciente = Paciente.new nomeCompleto: '',dataDeNascimento: "28/08/2000",
                            cpf:"12345678911", email: "pacientesemnome@gmail.com",
                            endereco_attributes:{ cidade: 'Garanhuns', logradouro: "rua da padaria",
                                                 complemento: 'apartamento', bairro: "Heliopes", cep: '12345678'}
    assert_not paciente.save
  end

  test "Deve salvar paciente corretamente" do
    paciente = Paciente.new nomeCompleto: 'Geisianny Paciente', dataDeNascimento:"28/08/2000",
                            cpf:"22222222222", email: "GeisiannyPaciente@gmail.com",
                    endereco_attributes:{cidade: 'Garanhuns', logradouro: "rua da padaria",
                                         complemento: 'apartamento', bairro: "Heliopes", cep: '12345678'}
    assert paciente.salve
  end

  end
