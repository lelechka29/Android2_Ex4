When(/^I swipe in the Menu$/) do
  #свайп.
  # start_x, end_x (offset_x)- нач. и конечные положоения по оси Х (по горизонтали)
  # start_y, end_y (offset_y) - нач. и конечные положоения по оси Y (по вертикали)
  # duration - длительность воздействия, в мс
  action = Appium::TouchAction.new.swipe(start_x: 0.01,start_y: 0.5, offset_x: 0.9, offset_y: 0.5, duration:500)
  action.perform

end

Then(/^I see app Menu$/) do
  find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='Area']")
  find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='Cooking']")
  find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='Currency']")
end

And(/^I select "([^"]*)" from menu$/) do |value|
  select_menu_item (value)
end


Then(/^I land on "([^"]*)" screen$/) do |value|
  find_element(id:"toolbar").find_element(xpath:"//android.widget.TextView[@text='#{value}']")
end