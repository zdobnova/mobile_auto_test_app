When(/^I select "([^"]*)" from right column$/) do |value|
  find_element(id:"radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end


Then(/^I see "([^"]*)" in from headers$/) do |value|
  actual_value = find_element(id:"header_text_unit_to").text
  if actual_value != value
    fail ("Expected value is #{value}, but actual value #{actual_value}")
  end
end

And(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  if actual_value != value
    fail ("Expected value is #{value}, but actual value #{actual_value}")
  end
end