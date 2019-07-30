Given(/^I land on help popup$/) do
  find_element(id:"alertTitle")
end

When(/^I click on Got it button$/) do
  find_element(id:"button1").click
end

Then(/^I land on Area screen$/) do
  find_element(xpath: "//android.widget.TextView[@text='Area']")
end

When(/^I click on Swap button$/) do
  find_element(id:"fab").click
end

Then(/^I see "([^"]*)" in From headers$/) do |value|
  actual_value = find_element(id:"header_text_unit_from").text
  puts ("Expected value is" + value)
  puts ("Actual value is" + actual_value)
  end

And(/^I see "([^"]*)" in to header$/) do |value|
  actual_value = find_element(id:"header_text_unit_to").text
  puts ("Expected value is" + value)
  puts ("Actual value is" + actual_value)
end

And(/^I click on Clear it button$/) do
  find_element(id:"menu_clear").click
end

When(/^I  enter "([^"]*)" to From field$/) do |value|
  find_element(id:"header_value_from").send_keys(value)
end

Then(/^I get "([^"]*)" i n To field$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  if actual_value != value
    fail ("Expected value is #{value}, but actual value #{actual_value}")
  end
end

When(/^I click on From field$/) do
  find_element(id:"header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split("")
  digits.each do |key|
  digit = Integer (key)
  press_keycode 7 + digit
    end
end

When(/^I select "([^"]*)" from left column$/) do |value|
  find_element(id:"radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end