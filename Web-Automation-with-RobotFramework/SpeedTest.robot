

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***

${base_url}    https://demowebshop.tricentis.com/
${browser}    chrome

*** Test Cases ***
login Test
    Open Browser    ${base_url}    ${browser}
    #Selenium speed
    ${speed_selenium}    Get Selenium Speed
    # Log To Console    ${speed_selenium}
    # Set Selenium Speed    1s
    
    #Selenium implicit wait
    ${speed_selenium}    Get Selenium Implicit Wait
    Log To Console    ${speed_selenium}
    Set Selenium Implicit Wait   5s
    
    # Wait Until Page Contains    Log in
    Click Element    //a[normalize-space()='Log in']
    # Wait Until Page Contains    Register
    Click Element    //input[@value='Register']
    Select Radio Button    Gender    M
    Input Text    name:FirstName    testing
    Input Text    name:LastName    adc
    Input Text    name:Email    testingadc@yopmail.com 
    Input Text    name:Password    12345678
    Input Text    name:ConfirmPassword    12345678
    ${speed_selenium}    Get Selenium Implicit Wait
    Log To Console    ${speed_selenium}

    
*** Keywords ***
Login to website
    

