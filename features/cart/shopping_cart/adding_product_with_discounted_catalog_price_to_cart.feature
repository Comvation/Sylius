@shopping_cart
Feature: Adding a simple product with discounted catalog price to the cart
    In order to select products with proper price
    As a Visitor
    I want to be able to add simple products with discounted catalog price to the cart

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a product "Mug" priced at "$40"
        And the store has a product "T-Shirt" priced at "$20"
        And there is a catalog promotion "Winter sale" that reduces price by "25%" and applies on "T-Shirt" variant

    @todo
    Scenario: Adding a simple product with discounted catalog price to the cart
        When I add product "T-Shirt" to the cart
        And I add product "Mug" to the cart
        Then I should be on my cart summary page
        And I should be notified that the product has been successfully added
        And I should see "T-Shirt" with unit price "$15.00" in my cart
        And I should see "T-Shirt" with original price "$20.00" in my cart
        And I should see also "Mug" with unit price "$40.00" in my cart
        And I should see "Mug" with original price "$40.00" in my cart