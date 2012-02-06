Feature: Manage sessions
  In order to use the website
  As a visitor
  I want to be signed in
  
  Scenario: Sign in user
    Given I have a user named Frank
    When I go to sign in and fill in credentials
    Then I should see "User logged in"
    
  Scenario: Sign out user
    Given I am signed in as Frank
    When I go to sign out
    Then I should see "User logged out"
    
  