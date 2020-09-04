Given(/^the user is on the "([^"]*)" page$/) do |page|
  Nav.to(page)
end


Then(/^the user should go to the "([^"]*)" page$/) do |page|
  Nav.to(page)
end


When(/^the user search for "([^"]*)"$/) do |query|
  menubar = browser.wait(:like => [:div, :id, 'mw-head-base'])
  # Get the input element
  #searchbox = browser.find(:like => [:div, :id => "p-search"])
  searchbox = browser.find(
      :like => {
          :element => :input, :id => :searchinput
      }
  )
  # Make sure the input field is empty
  searchbox.clear rescue log.debug "Could not clear searchbox"
  # Fill in the query
  searchbox.send_keys(query)
  # Press enter to submit the search
  searchbox.send_keys(:enter)
end