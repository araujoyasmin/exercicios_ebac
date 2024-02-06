Feature: Login

    As an EBAC SHOP user
    I want to login with authentication on the plataform
    To see my orders

Background: Login page
    Given that I access the page of login

Scenario: Login authenticate
    When I enter the user <username>
    And the password <password>
    Then I should see a message <expected_message>

Examples:
    | username           | password  | expected_message            |
    | yasmin@ebac.com    | ebac1234  | Welcome                     |
    | xxx@ebac.com       | ebac1234  | The user doesn't exist      |
    | yasmin@ebac.com    | 12344566  | User or password is invalid |

Scenario: Inexistent user
    When I enter the user "xxx@ebac.com"
    And the password "ebac1234"
    Then I should see a message that "The user don't exist"


Scenario: User with invalid password
    When I enter the user "yasmin@ebac.com"
    And the password "12344566"
    Then I should see a message that "User or password invalid"




    