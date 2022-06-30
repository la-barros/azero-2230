

Dado('que {string} é minha nova  tarefa') do |titulo|                         
    @nova_tarefa = { titulo: titulo, data: nil, tags: [] } 
  end                                                                           
                                                                        
 
  Dado('quero finalizar esta tarefa em  {string}') do |string|                   
    @nova_tarefa[:data] = data    
  end                                                                            
                                                                             
Dado('além disso eu vou taguear está tarefa com:') do |table|
    @nova_tarefa[:tags] = table.hashes
end

Dado('já existe uma tarefa com o título em questão') do                        
    steps %(
        Quando eu faço o cadastro desta tarefa
    )
end                                                                            
  
Quando('eu faço o cadastro desta tarefa') do
   @tarefas_page.bt_nova_tarefa.click
   @tarefas_page.adicionar(@nova_tarefa) 
end
  
Então('esta tarefa deve ser exibida com status {string}') do |status_tarefa|
   expect(
    @tarefas_page.obter_por_titulo(@nova_tarefa[:titulo])
   ).to have_content status_tarefa
end

Então('vejo a mensagem de alerta {string}') do |mensagem_alerta|
    expect(
        @tarefas_page.mensagem_alerta.text
    ).to eql mensagem_alerta 
  end
  