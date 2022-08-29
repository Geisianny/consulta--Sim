Feature: Paciente

As a paciente
I want to criar, editar, remover, ver, marcar e atualizar meu cadastro
So that Eu nao tenha que fazer de forma manual

Scenario: criar paciente corretamente
    Given eu estou na pagina de cadastro de paciente
    When eu crio um paciente com o nomeCompleto: "Joaquina  Jones", dataDeNascimento: "20/08/1999", cpf:"11111111111",email: "JJdoMal@gmail.com", cidade: "Caruaru", logradouro: "rua da mata", complemeto:"ap", bairro: "Circo", cep: "55555555"
    And eu seleciono criar paciente
    Then vejo uma mensagem que avisa que o paciente foi criado


Scenario: editar logradouro de paciente 
    Given eu estou na pagina de cadastro de paciente
    And pessoa com cpf: "11111111111" existe no sistema
    When eu clico em editar e edito o logradouro para "rua do beco sem saida", do paciente com cpf: "11111111111"
    Then eu recebo uma mensagem que avisa que o paciente com cpf:"11111111111" foi editado