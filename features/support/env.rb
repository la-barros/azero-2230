require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if @browser.eql?('remote_headless')
   Capybara.run_server = false 
   Capybara.javascript_driver = :selenium
   
   caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
       'args'=> ['--no-default-browser-check']
      }
   )
   
   Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
     app,
     browser: :remote,
     url: 'http://selenium_server:4444/wd/hub',

    )
   end

Capybara.configure do |config|
    config.default_driver = if @browser.eql?('firefox')
                               :selenium
                            elsif @browser.eql?('chrome')
                               :selenium_chrome
                            elsif @browser.eql?('chrome_headless')
                               :selenium_chrome_headless
                            elsif @browser.eql?('remote_headless')
                              :selenium 
                            else 
                               raise 'Nenhum navegador foi selecionado'
                            end   
   config.default_max_wait_time = 5                           
end
