Feature: BBC Signup

  Scenario: Clicking on the under thirteen option on the registration page
    Given I can access the bbc registration page
    When I click on the Under thirteen button
    Then I should be redirected to the register with grown up email page

  Scenario: Clicking on the over thirteen button on the registration page
    Given I can access the bbc registration page
    When I click on the over thirteen button
    Then I should be redirected to the date of birth pages

  Scenario: Inputting a valid date of birth that is over thirteen years of age
    Given I am on the registration date of birth page
    And I input a valid date of birth that is over thirteen years old
    When I click on the continue button
    Then I should be redirected to the registration page

  Scenario: Inputting the correct details in the registration page
    Given I am on the final registration page
    And I have entered a valid username
    And I have entered a valid password
    And I have entered a valid postcode
    And I have selected a gender option
    And I have selected an email updates button
    When I click on the Register button
    Then I should be logged in
    And I should be redirected to the homepage
    And I should be able to access my account

  Scenario: Inputting an invalid email format in the registration page
    Given I am on the final registration page
    When I input an invalid email
    Then I should get a email error message

  Scenario: Inputting an invalid password in the registration page
    Given I am on the final registration page
    When I input an invalid password
    Then I should get a password error message
