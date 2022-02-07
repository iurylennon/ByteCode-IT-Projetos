#language: pt
Funcionalidade: Testando Login

  Esquema do Cenario:
    Dado que o usuario esta na tela de login
    Quando preencher o username com <usuario> e password com <senha> e clicar no botao de login
    Entao quando o <casodeteste> ocorrer devera receber a <resposta>
    Exemplos:
      | casodeteste | usuario                   | senha           | resposta                                                                    |
      | "válido"    | "standard_user"           | "secret_sauce"  | "https://www.saucedemo.com/inventory.html"                                  |
      | "válido"    | "problem_user"            | "secret_sauce"  | "https://www.saucedemo.com/inventory.html"                                  |
      | "válido"    | "performance_glitch_user" | "secret_sauce"  | "https://www.saucedemo.com/inventory.html"                                  |
      | "inválido"  | "123456"                  | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "e-mail@outlook.com"      | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | ",,,,,,"                  | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | ""                        | "secret_sauce"  | "Epic sadface: Username is required"                                        |
      | "inválido"  | "locked_out_user"         | ""              | "Epic sadface: Password is required"                                        |
      | "inválido"  | "       "                 | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "standard_user"           | ""              | "Epic sadface: Password is required"                                        |
      | "inválido"  | "standard_user"           | "secret sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "standard user"           | "secret_sauce"  | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "performance glitch user" | "123456"        | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "secret_sauce"            | "standard_user" | "Epic sadface: Username and password do not match any user in this service" |
      | "inválido"  | "problem user"            | "secret sauce"  | "Epic sadface: Username and password do not match any user in this service" |