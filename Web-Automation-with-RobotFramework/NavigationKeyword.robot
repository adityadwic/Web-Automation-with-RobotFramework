

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    https://demo.automationtesting.in/Windows.html
${base_url2}    https://www.google.com/
${base_url3}    https://www.bing.com/new
${browser}    chrome

*** Test Cases ***
Navigation Test
    Open Browser    ${base_url2}    ${browser}
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    ${base_url3}
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    Sleep    2s

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    
*** Keywords ***


