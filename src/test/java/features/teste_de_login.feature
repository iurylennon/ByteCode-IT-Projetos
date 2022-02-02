#language: pt
Funcionalidade: Testando Login

  Esquema do Cenario:
    Dado que o usuario esta na tela de login
    Quando preencher o username com <usuario> e password com <senha> e clicar no botao de login
    Entao deverá acessar
    Exemplos:
      | usuario                   | senha          |
      | "standard_user"           | "secret_sauce" |
      | "problem_user"            | "secret_sauce" |
      | "performance_glitch_user" | "secret_sauce" |


  Esquema do Cenario:
    Dado que o usuario esta na tela de login
    Quando preencher o username com <usuario> e password com <senha> e clicar no botao de login
    Entao deverá receber a <resposta>
    Exemplos:
      | usuario                   | senha           | resposta                                                                    |
      | "123456"                  | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "e-mail@outlook.com"      | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | ",,,,,,"                  | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | ""                        | "secret_sauce"  | "Epic sadface: Username is required"                                        |
      | "locked_out_user"         | ""              | "Epic sadface: Password is required"                                        |
      | "       "                 | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "standard_user"           | ""              | "Epic sadface: Password is required"                                        |
      | "standard_user"           | "secret sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "standard user"           | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "performance glitch user" | "123456"        | "Epic sadface: Username and password do not match any user in this service" |
      | "secret_sauce"            | "standard_user" | "Epic sadface: Username and password do not match any user in this service" |
      | "problem user"            | "secret sauce" | "Epic sadface: Username and password do not match any user in this service" |