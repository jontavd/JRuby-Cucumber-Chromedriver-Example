require 'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'sikulix'

$capybara_driver = :chrome
Capybara.register_driver :chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' => ['--start-maximized'] })
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end

Capybara.default_driver = $capybara_driver
Capybara.default_max_wait_time = 15

Sikulix::Platform.check_and_require
Sikulix::Settings.ActionLogs=false
Sikulix::Settings.InfoLogs=false
Sikulix::Settings.DebugLogs=false
Sikulix::ImagePath.add('images')
