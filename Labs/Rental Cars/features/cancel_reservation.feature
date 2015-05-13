Feature: Cancel rental reservation

  Scenario: Customer cancels rental reservation
    Given I have an existing rental reservation
    When I choose to cancel a rental reservation
    Then notification indicating the reservation is cancelled is displayed
