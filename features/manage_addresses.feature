Feature: Manage addresses
  In order to identify myself
  As a member
  I want to be able to manage my addresses
  
  Scenario: View my address
    Given I have a user with "email" equals "frank@microsoft.com"
    And I am not logged in
    When I go to the new_user_session page
    And fill in "Email" with "frank@microsoft.com"
    And fill in "Password" with "mypassword"
    And I press "Sign in"
    And I follow "my profile"
    Then I should see "My addresses"
    And I should see "Street: Mihai Viteazu"
    And I should see "County: Buzau"
    
  Scenario: Edit my address
    Given I am signed in as "frank@microsoft.com"
    When I go to the homepage
    And I follow "logout"
    Then I should see "Signed out successfully."
    
  