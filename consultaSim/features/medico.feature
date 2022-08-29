Feature: Medico

As a medico
I want to criar, remover, editar, ver e atualizar meu cadastro
So that Eu nao tenha que fazer isso de forma manual

Scenario: remover medico
    Given eu estou na pagina de cadastro de medico
    And medico com crm "66666" existe nesse sistema
    When eu clico em remover medico com crm igual a "66666"
    Then eu recebo uma mensagem que avisa que o medico com o crm igual a "66666" foi removido 

Scenario: editar medico
    Given estou na pagina de cadastro de medico
    And medico com crm "66666" existe nesse sistema
    When eu clico em editar e edito o email para "medidoBraboDoSus@gmail.com" do medico de crm igual a "66666"
    Then eu recebo uma mensagem avisa que o medico com o crm igual a "66666" foi editado 

