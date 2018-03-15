When(/^I select "([^"]*)" in To$/) do |value|
  find_element(id:"radio_group_to").find_element(xpath:"//android.widget.RadioButton[@text='#{value}']").click

end


Then(/^I land on "([^"]*)" header value To$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  if actual_value != value
    fail ("Expected value is #{value}, but actual value was #{actual_value}")

    else puts("Succesfully! =)")
  end
end

When(/^I select SqKilometre in From$/) do
  find_element(id:"radio_group_from").find_element(xpath:"//android.widget.RadioButton[@text='Sq Kilometre']").click
end