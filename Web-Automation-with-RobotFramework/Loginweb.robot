

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    https://demo.nopcommerce.com/
${browser}    chrome


*** Test Cases ***
login Test
    Open Browser    ${base_url}    ${browser}
    Login to website

    
*** Keywords ***
Login to website
    Click Element    //a[normalize-space()='Log in']
    Click Element    //input[@id="Email"]
    Input Text    id:Email    testingadc@yopmail.com
    Input Text    id:Password    12345678
    Click Element    //button[normalize-space()='Log in']
