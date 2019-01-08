require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
 

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end 

Capybara.configure do |config|
    config.default_max_wait_time = 15
end



