Feature: Manage sessions
  In order to use the website
  As a visitor
  I want to be able to sign in and sogn out
  
  Scenario: Sign in
    Given I have a user with "email" equals "frank@microsoft.com"
    And I am not logged in
    When I go to the new_user_session page
    And fill in "Email" with "frank@microsoft.com"
    And fill in "Password" with "mypassword"
    And I press "Sign in"
    Then I should be on the homepage
    And I should see "Signed in successfully."
    
  Scenario: Sign out
    Given I am signed in as "frank@microsoft.com"
    When I go to the homepage
    And I follow "logout"
    Then I should see "Signed out successfully."
    
  