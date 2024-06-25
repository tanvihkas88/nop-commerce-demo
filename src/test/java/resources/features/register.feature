Feature: Register feature
  In Order to perform successful register
  As a User
  I have to enter all necessary details

  @sanity @smoke @regression
  Scenario: User should navigate to register page successfully
    Given I am on homepage
    When I click on register link
    Then I should navigate to Register page successfully

  @smoke @regression
  Scenario: Verify that firstname lastname email password and confirm password fields are mandatory
    Given I am on homepage
    When I click on register link
    And I click on register button
    Then I should see the error message "First name is required." in first name field
    And I should see the error message "Last name is required." in last name field
    And I should see the error message "Email is required." in email field
    And I should see the error message "Password is required." in password field
    And I should see the error message "Password is required." in confirm password field

  @regression
  Scenario: User should create account successfully
    Given I am on homepage
    When I click on register link
    And I click on female gender
    And I enter first name "Jackie"
    And I enter last name "Chan"
    And I select day
    And I select month
    And I select Year
    And I enter emailId "jackiechacha@gmail.com"
    And I enter password "Jackie13658" in password field
    And I confirm password "Jackie13658"
    And I click on register button
    Then I can see message "Your registration completed"
