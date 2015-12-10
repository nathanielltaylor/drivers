require "selenium-webdriver"
require "pry"

puts "What email do you use to sign in to Facebook?"
email = gets.chomp
puts "What is your Facebook password?"
pw = gets.chomp
driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://www.facebook.com/notifications"
email_field = driver.find_element(:id, 'email')
email_field.send_keys(email)
pw_field = driver.find_element(:id, 'pass')
pw_field.send_keys(pw)
driver.find_element(:id, 'u_0_2').click
panel = driver.find_element(:class, 'UIStandardFrame_Content')
puts panel.text

driver.quit
