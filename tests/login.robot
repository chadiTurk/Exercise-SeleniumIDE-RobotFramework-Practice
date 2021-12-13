*** Settings ***
Documentation   A test suite with tests containing login validation
...
...              This test follows the example using keywords from
...              the SeleniumLibrary

Library         SeleniumLibrary
*** Test Cases ***
Valid login
    Open Browser    https://www.saucedemo.com   chrome

    