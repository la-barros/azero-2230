class TarefasPage
    include Capybara::DSL

    def ola 
        find('#task-board h3').text 
    end

    def bt_nova_tarefa  
        find('#insert-button')
    end

    def adicionar(tarefa) 
        find('input[name=title]').set tarefa[:titulo]
        find('input[name=dueDate]').set tarefa[:data]
        add_tags(tarefa[:tags])
        click_button 'Cadastrar'
    end

    def obter_por_titulo(titulo)
        find('table tbody tr', text: titulo)
    end

    def mensagem_alerta
find('.alert-warn')
    end

    private

    def add_tags(tags)
       campo_tag = find('.bootstrap-tagsinput input')
       tags.each do |t|
        campo_tag.set t[:tag]
        campo_tag.send_keys :tab
       end 
    end
       
end






