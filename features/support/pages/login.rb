class LoginPage
    include Capybara::DSL

    def visita 
      visit 'http://localhost:5000/login'
    end
    
    def logar(email, senha)
        find('#login_email').set email
        find('input[name=password]').set senha
        click_button 'Login'
    end

    def alerta
        find('.alert-login')
    end
end












    # include Capybara::DSL 
    # def campo_email
    # find('#login_email') 
    # end

    # def campo_senha
    # find('input[name=password]')
    # end

    # def botao
    # click_button 'Login'
    # end
# end
