

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
Handle multiple tab
    Open Browser    ${base_url}    ${browser}
    Maximize Browser Window
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Sleep    2s
    Switch Window    title=Selenium    #Change tab
    Click Element    xpath://*[@id="main_navbar"]/ul/li[6]/a/span
    

Handle multiple browser
    Open Browser    ${base_url2}    ${browser}
    Maximize Browser Window
    Sleep    2s

    Open Browser    ${base_url3}    ${browser}
    Maximize Browser Window
    
    Switch Browser    1

    ${title_browser}=    Get Title
    Log To Console    ${title_browser}

    Switch Browser    2

    ${title_browser2}=    Get Title
    Log To Console    ${title_browser2}

    Sleep    2s
    
*** Keywords ***


