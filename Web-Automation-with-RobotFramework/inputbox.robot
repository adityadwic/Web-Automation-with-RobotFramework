

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
login Test and Validation for each field
    Open Browser    ${base_url}    ${browser}
    Title Should Be    nopCommerce demo store
    Maximize Browser Window
    Click Element    //a[normalize-space()='Log in']
    ${email_field}    Set Variable    //input[@id="Email"]
    Element Should Be Visible    ${email_field}
    Element Should Be Enabled    ${email_field}
    Input Text    ${email_field}    testingadc@yopmail.com
    Sleep    2s
    Clear Element Text    ${email_field}
    