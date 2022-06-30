
    class Nav
        include Capybara::DSL

        def menu_usuario 
            find('a[href*=dropdown]') 
         end 

        def sair 
            menu_usuario.click 
            click_link 'Sair'
        end

        def perfil 
            menu_usuario.click 
            click_link 'Meu Perfil'
       end 
    end