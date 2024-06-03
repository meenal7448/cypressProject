Feature: User Signup Functionality

  Scenario: User successfully signs up for an account
    Given User navigates to webpage
    Then Verify user has not already registered an account with the platform
    When the user navigates to the signup page
    And fills out the registration form with valid information
    And submits the registration form
    Then the user receives a success message indicating account creation