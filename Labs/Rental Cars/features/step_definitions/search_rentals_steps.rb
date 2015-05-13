require 'page-object'

include PageObject::PageFactory

Given(/^the customer has selected search parameters$/) do
  #goto website
  #select new reservation
  #choose a random number and type of search parameters
  @criteria1= 'rental_class'
  @criteria1_value= 'luxury'
end

When(/^the search is run$/) do
  #search
end


Then(/^only available cars which meet the search parameters are displayed$/) do
  #verify all results meet search parameters
  expect(search_results).not_to be_empty
  (search_results).each do |search_result|
    expect(search_result.send(@criteria1.to_sym)).to eq @criteria1_value
    #expect(search_result.send(@criteria2.to_sym)).to eq @criteria2_value
    end
end

Given(/^a search for available cars has returned results$/) do
  #goto website
  #select new reservation
  #select two random search parameters for known available cars
  #search
  #verify results sorted by type
end

When(/^a parameter is selected$/) do
  #click the top a random column other than type
end

Then(/^the cars are sorted by the selected parameter$/) do
  #verify results are now sorted by column selected followed by type
end

When(/^the customer selects a car$/) do
  #select details button for random car in search results
end

Then(/^details for the selected car are displayed$/) do
  #verify the details page for the selected car is displayed
end

Given(/^no cars meeting a customer's criteria are available$/) do
  #select parameters for car that is not available in inventory
end

Then(/^no search results should be returned$/) do
  #verify search results are empty
end

And(/^notification that no results exist should be displayed$/) do
  #verify no results returned message is displayed
end