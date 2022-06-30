Before do 
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @nav = Nav.new
end 

Before('@auth') do
   @login_page.visita 
   @login_page.logar('la.barros@outlook.com.br', '123456')
end

After('@auth') do
 @nav.sair 
end

After('@logout') do
    @nav.sair 
end

After do |scenario|
    nome = scenario.name.gsub(/[^A-Za-z0-9 ] /, '')
    nome = nome.tr(' ', '_').downcase!
    shot = "log/shots/#{nome}.png"
    page.save_screenshot(shot) #capybara tira screenshot
    embed(shot, 'image/png', 'Evidência :)')  #cucumber anexa o screenshot no report  
end 