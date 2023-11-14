Feature: Login Feature
    Background:
        Given A user opens the login page

    Scenario: Successful login
        When A user enters the username "standard_user", the password "secret_sauce", and clicks on the login button
        Then A user will be logged in

    Scenario: Login with incorrect username
        When A user enters incorrect credentials, and clicks on the login button
            | username | password     |
            | test1234 | secret_sauce | 
        Then The "Epic sadface: Username and password do not match any user in this service" error message is displayed

    Scenario: Login with incorrect password
        When A user enters incorrect credentials, and clicks on the login button
            | username      | password |
            | standard_user | test1234 | 
        Then The "Epic sadface: Username and password do not match any user in this service" error message is displayed

    Scenario: Login with empty fields
        When A user clicks on the login button 
        Then The "Epic sadface: Username is required" error message is displayed

    Scenario: Blocked user Login
        When A user enters the username "locked_out_user", the password "secret_sauce", and clicks on the login button
        Then The "Epic sadface: Sorry, this user has been locked out." error message is displayed