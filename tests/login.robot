*** Settings ***
Documentation   A test suite with tests containing login validation
...
...              This test follows the example using keywords from
...              the SeleniumLibrary
Library         SeleniumLibrary
*** Test Cases ***
Successful user log in
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Element Text Should Be    class:title    PRODUCTS
    Close Browser
Unsuccessful user log in by a locked out user
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   locked_out_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3  Epic sadface: Sorry, this user has been locked out.
    Close Browser
Typed wrong password
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    wrong_password
    Click Button  login-button
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3  Epic sadface: Username and password do not match any user in this service
    Close Browser
Logged in as problem user and sees a broken inventory page
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   problem_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Page Should Contain Image   xpath://*[@id="item_4_img_link"]/img     src="/static/media/sl-404.168b1cce.jpg"
    Close Browser
