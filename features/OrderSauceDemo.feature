Feature: Sauce Demo

    Scenario: Journey Order
        Given User is on login homepage
        When User fill username
        And User fill password
        And User click login button
        Then User is on sauce demo homepage
        When User add product to cart
        And User click cart button
        And User click check out button
        Then User is on check out page
        When User fill check out info
        And User click continue button
        And User overview and finish order
        Then User is on thank you order page