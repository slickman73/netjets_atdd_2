require 'page-object'

include PageObject::PageFactory

When(/^I search for flights between 2 airports for a specific day$/) do
  goto_southwest_app

  @test_departure_airport, @test_arrival_airport = search_for_flights_between_valid_airports
end


Then(/^I am shown all available flight between those 2 airports for that day$/) do
  expect(search_results).not_to be_empty

  expect(search_results_departure_airport).to include @test_departure_airport
  expect(search_results_arrival_airport).to include @test_arrival_airport
end


When(/^I search for flights departing and arriving at the same airport$/) do
  goto_southwest_app

  @test_departure_airport, @test_arrival_airport = search_for_flights_between_duplicate_airports
end

Then(/^I am notified that I cannot perform the search$/) do
  expect(search_error).to include 'Invalid route with departure airport'
end