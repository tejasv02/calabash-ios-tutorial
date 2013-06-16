Given(/^I am in home screen$/) do
  check_am_in_home_screen()
  element_exists("view")
  sleep(STEP_PAUSE)
  if (!element_exists("view accessibilityLabel:'nav_item'"))
    screenshot_and_error("NOT IN HOME PAGE")
  end
end

When(/^I click on "(.*?)" button$/) do |arg1|
  click_button_by_text(arg1)
end

Then(/^I see "(.*?)" button$/) do |arg1|
  check_button_text(arg1)
end





