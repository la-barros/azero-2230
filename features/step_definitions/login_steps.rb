  Dado('que eu acesso a página principal') do 
    @login_page.visita 
  end

  Quando('eu faço login com {string} e {string}') do |email, senha|
    @login_page.logar(email, senha)
  end

  Quando("eu tento logar {string} e {string} por {int} vezes") do |email, senha, qtd|
     qtd.times do
     @login_page.logar(email, senha)
     end  
  end

  Então('devo ver a mensagem {string}') do |mensagem_ola|
    expect(@tarefas_page.ola).to eql mensagem_ola
  end  

  Então('devo ver a mensagem de alerta {string}') do |mensagem_alerta|
     expect(@login_page.alerta).to have_content mensagem_alerta 
  end
  
