Feature: Checkout Page

    As an EBAC SHOP user
    I want to finalize the registration
    To finalize the order

Background: Registration
    Given that I access the page of registration

Scenario: Mandatory Fields Filled
    When I fill in my information with mandatory fields filled
    Then I can submit the registration

Scenario: Format email
    When I enter the email <email>
    Then I should see a message <expected_message>

Examples:
    | email             | expected_message   |
    | yasmin@ebac.com   | Valid email        |
    | yasmin.teste      | Invalid email      |


Scenario: Empty fields
    When let some fields empty
    Then I should see the message "There're empty fields"