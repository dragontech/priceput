Feature: Manage users
  In order to authenticate on the website
  As a visitor
  I want to create an account
  
  Scenario: Sign up user
    Given I am not logged in
    And I have no users
    When I go to signup page
    And I fill in "email" with "frank@microsoft.com"
    And I fill in "password" with "mypassword"
    And I fill in "password_confirmation" with "mypassword"
    And I press "Create"
    Then I should see "User signed up"
    And I should have 1 user
