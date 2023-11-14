Feature: Cart Feature
    Background:
        Given A user is on the website and is already logged in using username: "standard_user" and password: "secret_sauce"
        When A user clicks on the Add to cart button

    Scenario: Adding a product to the Cart
        And A user clicks on the Cart icon
        Then The added product is displayed on the Cart page

    Scenario: Checking the change in the number of products
        And A user clicks on the Add to cart button of second product
        Then The "2" number badge is displayed in the cart icon

    Scenario: Removing product from the cart in the main page
        And A user clicks on the Remove button on the main page
        Then The product is not added to the cart

    Scenario: Removing product from the cart in the cart page
        And A user clicks on the Cart icon
        And A user clicks on the Remove button on the Cart page
        Then The product card is not displayed in the Cart page

    Scenario: Checking the Continue Shopping button functionality in the Cart page
        And A user clicks on the Cart icon
        And A user clicks on the Continue shopping button
        Then The main page with the product cards is displayed

    