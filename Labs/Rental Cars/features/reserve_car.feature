Feature: Reserve car

  Scenario: Customer reserves available car
    Given a search for available cars has returned results
    And I have chosen to view a car's details
    When I choose to reserve the car
    Then notification indicating the car is reserved is displayed

