Given(/^I land on help popup$/) do
  puts ("User lands on help popup")
end

When(/^I click on Got it button$/) do
  puts ("User clicks on Got it button ")
end

Then(/^I land on Area screen$/) do
  puts("User lands on Area screen")
end

When(/^I click on Swap button$/) do
  puts ("User clicks Swap button")
end

Then(/^I see "([^"]*)" in From headers$/) do |value|
  puts ("Frome header values is"+ value)
end

And(/^I see "([^"]*)" in to header$/) do |value|
  puts ("To header values is #{value}")
end

And(/^I click on Clear it button$/) do
  puts ("User clicks on Clear it button ")
end

When(/^I  enter "([^"]*)" to From field$/) do |value|
  puts ("User entered value #{value}")
end

Then(/^I get "([^"]*)" i n To field$/) do |value|
  puts ("User sees #{value} in result field ")
end