Feature: Manage users
  In order to authenticate on the website
  As a visitor
  I want to create an account
  
  Scenario: Sign up user
    Given I am not logged in
    And I have no users
    When I go to the new_user_registration page
    And I fill in "Email" with "frank@microsoft.com"
    And I fill in "Password" with "mypassword"
    And I fill in "Password confirmation" with "mypassword"
    And I press "Sign up"
    Then I should see "Authenticated as frank@microsoft.com"
    And I should have 1 user
