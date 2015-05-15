require 'page-object'

include PageObject::PageFactory

Given(/^the customer has selected search parameters$/) do
  #goto_rentawreck_home

  #new_reservation
  #choose a random number and type of search parameters

  @criteria1, @criteria1_value = enter_single_search_criteria

end

When(/^the search is run$/) do
  #search
  new_search
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
  goto_rentawreck_home
  new_reservation
  @criteria1, @criteria1_value = single_search_criteria
  new_search

end

When(/^a parameter is selected$/) do
  sort_cars
end

Then(/^the cars are sorted by the selected parameter$/) do
  #verify results are now sorted by column selected
  expect(search_results).not_to be_empty
  sorted=search_results.each_cons(2).all? do |a,b|
    (a.price<=>b.price) <=0
  end
  expect(sorted).to eq true
end

When(/^the customer selects a car$/) do
  #select details button for random car in search results
end

Then(/^details for the selected car are displayed$/) do
  #verify the details page for the selected car is displayed
  expect
end

Given(/^no cars meeting a customer's criteria are available$/) do
  #select parameters for car that is not available in inventory
end

Then(/^no search results should be returned$/) do
  #verify search results are empty

And(/^notification that no results exist should be displayed$/) do
  #verify no results returned message is displayed
end

end
