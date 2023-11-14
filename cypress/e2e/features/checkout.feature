Feature: Cart Feature
    Background:
        Given A user is on the website and is already logged in using username: "standard_user" and password: "secret_sauce"
        When A user clicks on the Add to cart button
        And A user clicks on the Cart icon
        And A user clicks on the Checkout button

    Scenario: Verifying Cart Checkout Button Functionality
        Then The first Checkout page is opened

    Scenario: Checkout with valid credentials
        And A user enters valid data into the First Name, Last Name, Postal Code fields and clicks Continue button
        And A user clicks the Finish button
        Then The "Thank you for your order!" text is displayed

    Scenario: Checkout with empty fields
        And A user clicks on the Continue button
        Then The "Error: First Name is required" error message is displayed

    Scenario: Checkout with empty fields
        And A user enters postal code into the Postal Code field
        And A user clicks on the Continue button
        Then The "Error: First Name is required" error message is displayed

    Scenario: Checking the functionality of the Cancel button on the second Checkout page
        And A user enters valid data into the First Name, Last Name, Postal Code fields and clicks Continue button
        And A user clicks on the Cancel button 
        Then The first Checkout page is opened 