Feature: Manage suppliers
  In order to be able to publish my online profile
  As a member
  I want to have control over my profile details
  
  Scenario: User views his profile
    Given I am signed in as "frank@microsoft.com"
    When I go to the homepage
    And I follow "my profile"
    Then I should see "Email: frank@microsoft.com"

  Scenario: User edits his profile
    Given I am signed in as "frank@microsoft.com"
    And I go to the homepage
    And I follow "my profile"
    When I follow "Edit my profile"
    And I fill in "First name" with "Chuck"
    And I fill in "Last name" with "Testa"
    And I press "Save"
    Then I should see "First name: Chuck"
    And I should see "Last name: Testa"

