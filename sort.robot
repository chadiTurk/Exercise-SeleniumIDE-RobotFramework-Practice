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
    Set Selenium Speed     1
    Page Should Contain Element    login-button
    Input Text      user-name   standard_user
    Input Password  password    secret_sauceee
    Click Button    login-button
    Click Element   xpath://*[@id="header_container"]/div[2]/div[2]/span
    
    
   
