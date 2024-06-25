Feature: Login feature
  In Order to perform successful login
  As a User
  I have to enter correct username and password

  @sanity @smoke @regression
  Scenario: User should navigate to login page successfully
    Given I am on homepage
    When I click on login link
    Then I should navigate to login page successfully

  @smoke @regression
  Scenario Outline: Verify the error message with invalid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "<email>"
    And I enter password "<password>"
    And I click on login button
    Then I should see error message "<errorMessage>"
    Examples:
      | email               | password | errorMessage                                                                                |
      | abcd123@gmail.com   | xyz123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |
      | abcdzd123@gmail.com | abc123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |
      | abcad123@gmail.com  | xyz123   | Login was unsuccessful. Please correct the errors and try again.\nNo customer account found |

  @regression
  Scenario: User should log in successfully with valid credentials
    Given I am on homepage
    When I click on login link
    And I enter email "prime123@gmail.com"
    And I enter password "Prime123"
    And I click on login button
    Then I should login successfully

  @regression
  Scenario: User should log out successfully
    Given I am on homepage
    When I click on login link
    And I enter email "prime123@gmail.com"
    And I enter password "Prime123"
    And I click on login button
    And I click on logout button
    Then I should logout successfully


