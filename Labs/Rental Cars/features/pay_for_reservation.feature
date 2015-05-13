Feature: Pay for rental reservation

  Scenario Outline: Customer pays for existing reservation
    Given I have an existing rental reservation
    When I have opted to pay via <payment_method>
    Then notification indicating the rental is paid appears

    Examples:
    |payment_method|
    |credit card   |
    |debit card    |
    |pay pal       |


  Scenario Outline: Customer pays for new reservation
    Given I have a new  rental reservation
    When I have opted to pay via <payment_method>
    Then notification indicating the rental is paid appears

  Examples:
    |payment_method|
    |credit card   |
    |debit card    |
    |pay pal       |
