Feature: Searching available rental cars

  Scenario: New customer searches on available cars
    Given the customer has selected search parameters
    When the search is run
    Then only available cars which meet the search parameters are displayed

  Scenario: Customer sorts results of available cars search
    Given a search for available cars has returned results
    When a parameter is selected
    Then the cars are sorted by the selected parameter

  Scenario: Customer requests details of available car
    Given a search for available cars has returned results
    When the customer selects a car
    Then details for the selected car are displayed

  Scenario: No available cars meet customer's criteria
    Given no cars meeting a customer's criteria are available
    When the search is run
    Then no search results should be returned
    And notification that no results exist should be displayed


