#language: pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário cadastrado 
    Posso adicinoar novas tarefas 

    @auth
    Cenário: Adicionar tarefa
 
    Dado que "Estudar Ruby" é minha nova  tarefa 
    E quero finalizar esta tarefa em  "28/06/2022"
    E além disso eu vou taguear está tarefa com: 
         | tag        |
         | ruby       |
         | capybara   |
         | video aula |
         | code       |
    Quando eu faço o cadastro desta tarefa 
    Então esta tarefa deve ser exibida com status "Em andamento"

   @auth @dup
   Cenário: Tarefa duplicada 

   Dado que "Planejar minha viagem" é minha nova tarefa
   E que quero finalizar esta tarefa dia "28/06/2022"
   E além disso eu vou taguear está tarefa com:
        |  tag        |
        |  viagem     |
        |  inglterra  |
   Mas já existe uma tarefa com o título em questão  
   Quando eu faço o cadastro desta tarefa
   Então vejo a mensagem de alerta "Tarefa duplicada."