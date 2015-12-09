require "selenium-webdriver"
require "pry"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://www.omegle.com"
wait = Selenium::WebDriver::Wait.new(:timeout => 30)

driver.find_element(:id, 'textbtn').click

input = wait.until do
          text_box = driver.find_element(:class, 'chatmsg ')
          text_box if text_box.displayed?
        end

input.send_keys "Hello! I'm a bot!"
driver.find_element(:id, 'sendbtn').click

driver.quit
