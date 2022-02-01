#language: pt
Funcionalidade: Testando Login

  Cenario: Teste de Login

    Dado que o usuario esta na tela de login
    Quando preencher o username com “standard_user” e password com “secret_sauce” e clicar no botao de login
    Entao deverá acessar


  Esquema do Cenario:
    Dado que o usuario esta na tela de login
    Quando preencher o username com <usuario> e password com <senha> e clicar no botao de login
    Entao deverá receber a <resposta>
    Exemplos:
      | usuario           | senha             | resposta        |
      | "standard_user"   | "secret_sauce"    | "acesso ok"     |
