Feature: Products

  Scenario: Listing products
    Given the following products exist:
      | name     |
      | Cola     |
      | Soap     |
      | Pop corn |
    And I am on the root page
    Then I should see "Cola"
    And I should see "Soap"
    And I should see "Pop corn"
