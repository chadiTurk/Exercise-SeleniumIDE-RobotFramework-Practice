*** Settings ***
Documentation   A test suite with tests containing the different sorting options for the products
...
...              This test follows the example using keywords from
...              the SeleniumLibrary

Library         SeleniumLibrary
*** Test Cases ***
Sort product name (A to Z)
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[1]
    Element Text Should Be    class:active_option   NAME (A TO Z)
    Close Browser
Sort product name (Z to A)
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[2]
    Element Text Should Be    class:active_option   NAME (Z TO A)
    Close Browser
Sort product price (low to high)
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[3]
    Element Text Should Be    class:active_option   PRICE (LOW TO HIGH)
    Close Browser
Sort product price (high to low)
    Open Browser    https://www.saucedemo.com   chrome
    Maximize Browser Window
    Set Selenium Speed     0
    Page Should Contain Element    login-button
    Input Text  user-name   standard_user
    Input Password  password    secret_sauce
    Click Button  login-button
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span
    Click Element       xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[4]
    Element Text Should Be    class:active_option   PRICE (HIGH TO LOW)
    Close Browser
