            #language: pt

            Funcionalidade: Login
            Sendo um usuário cadastrado
            Posso acessar o sistema com meu email e senha
            Para que eu possa gerenciar minhas atividades

            Contexto: Pagina login
            Dado que eu acesso a página principal

            @logout @smoke
            Cenário: Usuário é autenticado

            Quando eu faço login com "la.barros@outlook.com.br" e "123456"
            Então devo ver a mensagem "Olá, Luiz Augusto"

            @tentativa
            Esquema do Cenário: Tentar logar

            Quando eu faço login com "<email>" e "<senha>"
            Então devo ver a mensagem de alerta "<alerta>"

            Exemplos:
            | email                    | senha     | alerta                                 |
            | la.barros@outlook.com.br | xpt456123 | Senha inválida.                        |
            | jtvo&gmail.com           | 123456    | Email incorreto ou ausente.            |
            |                          | 123456    | Email incorreto ou ausente.            |
            | la.barros@outlook.com.br |           | Senha ausente.                         |
            | 404@outlook.com          | 123456    | Usuário não cadastrado.                |
            | la.barros@outlook.com.br | 12345     | Senha deve ter no mínimo 6 caracteres. |

            @bloqueio
            Esquema do Cenário: Bloqueado por tentativas

            Quando eu tento logar "luizaugusto51@gmail.com" e "guto1234" por 6 vezes 
            Então devo ver a mensagem de alerta "Usuário bloqueado."

            # Exemplos:
            # | email                    | senha     | alerta                                           |
            # | la.barros@outlook.com.br | xpt456123 | Senha inválida.                                  |
            # | la.barros@outlook.com.br | xpt456123 | Senha inválida.                                  |
            # | la.barros@outlook.com.br | xpt456123 | Senha inválida.                                  |
            # | la.barros@outlook.com.br | xpt456123 | Senha inválida.                                  |
            # | la.barros@outlook.com.br | xpt456123 | Senha inválida.                                  |
            # | la.barros@outlook.com.br | xpt456123 | Usuário bloqueado. Por favor aguarde 10 segundos |









#  Cenário: Senha errada

#     Dado que eu acesso a pagina principal
#     Quando eu faço login com a senha errada
#     Então devo ver a mensagem "Senha inválida."

# @done
#  Cenário: Usuario não existe

#     Dado que eu acesso a pagina principal
#     Quando eu faço login com usuário que não existe
#     Então devo ver a mensagem "Usuário não cadastrado."

#  Cenário: Email não informado

#     Dado que eu acesso a pagina principal
#     Quando eu faço login e infomo o email
#     Então devo ver a mensagem "Email incorreto ou ausente."

#  Cenário: Email incorrteo

#     Dado que eu acesso a pagina principal
#     Quando eu faço login e informo um email incorreto
#     Então devo ver a mensagem "Email incorreto ou ausente."

#  Cenário: Senha não informada

#     Dado que eu acesso a pagina principal
#     Quando eu faço login e não informo a senha
#     Então devo ver a mensagem "Senha ausente."

# Cenário: Senha muito curta

#     Dado que eu acesso a pagina principal
#     Quando eu faço login com senha com menos de 6 caracteres
#     Então devo ver a mensagem "Senha deve possuir pelo meno 6 caracteres."

