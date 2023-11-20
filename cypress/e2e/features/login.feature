Feature: Login Feature
    Background:
        Given The user opens the login page

    Scenario: Successful login
        When The user enters the username "standard_user", the password "secret_sauce", and clicks on the login button
        Then The user will be logged in

    Scenario: Login with incorrect username
        When The user enters incorrect credentials, and clicks on the login button
            | username | password     |
            | test1234 | secret_sauce | 
        Then The user should see "Epic sadface: Username and password do not match any user in this service" error message

    Scenario: Login with incorrect password
        When The user enters incorrect credentials, and clicks on the login button
            | username      | password |
            | standard_user | test1234 | 
        Then The user should see "Epic sadface: Username and password do not match any user in this service" error message

    Scenario: Login with empty fields
        When The user clicks on the login button 
        Then The user should see "Epic sadface: Username is required" error message

    Scenario: Blocked user Login
        When The user enters the username "locked_out_user", the password "secret_sauce", and clicks on the login button
        Then The user should see "Epic sadface: Sorry, this user has been locked out." error message