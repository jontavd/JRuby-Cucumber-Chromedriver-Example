s = Sikulix::Screen.new

When(/^I open the chrome browser on Google page$/) do
  visit 'http://www.google.com'
end

Then(/^I should see the Google initial page$/) do
  sleep(5)
end

When(/^open a new tab using Sikulix$/) do
  s.click('chrome_newTab.png')
end
