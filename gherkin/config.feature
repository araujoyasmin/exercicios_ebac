Feature: Product Configuration

    As an EBAC SHOP user
    I want to configure my product with my size and quantity
    To insert in the cart

Background: Choose Product
 Given that I choose a product

Scenario: Mandatory Fields Filled
    When I fill in the product details
    | Field   | Value  |
    | Color   | Red    |
    | Size    | Medium |
    | Quantity| 5      |
    Then I can insert the procut in the cart

Scenario: Mandatory Fields Not Filled
    When I do not fill in some of the product details
    | Field    | Status   |
    | Color    | Selected |
    | Size     | Selected |
    | Quantity | Not entered |
    Then I should see a message indicating that the quantity is required


Scenario: Products in the limit
    When I selected 10 products
    Then I can insert the procuts in the cart


Scenario: Products out of Limit
    When I selected 11 products
    Then I should see the message that indicate that the limit of products was surpassed



Scenario: Clean the selected items
    Given that I have some informations about the produtct selected
    When I click in the "Clean" button
    Then all the previously selected information should be reset to the original state
