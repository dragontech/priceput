Feature: Manage addresses
  In order to identify myself
  As a member
  I want to be able to manage my addresses

  Scenario: Add an address
    Given I see my profile
    And I should see "My addresses"
    And I should see "Street: Mihai Viteazu"
    And I should see "County: Buzau"
    When I follow "add an address"
    And I fill in "County" with "Dolj"
    And I fill in "City" with "Craiova"
    And I fill in "Street" with "Ion Dolanescu"
    And I fill in "Number" with "13"
    And I press "Save"
    Then I should see "County: Dolj"
    And I should see "City: Craiova"
    And I should see "Street: Ion Dolanescu"
    And I should see "Number: 13"
      
  Scenario: Edit my address
    Given I am signed in as "frank@microsoft.com"
    When I go to the homepage
    And I follow "logout"
    Then I should see "Signed out successfully."
    
