

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    https://testautomationpractice.blogspot.com/
${base_url2}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome
${base_url_coupon}   

*** Test Cases ***
Alert and frames
    Handle alert testing
    Handle frames

*** Keywords ***
Handle alert testing
    Open Browser    ${base_url}    ${browser}
    Maximize Browser Window
    Click Element    //button[@onclick='myFunction()']    #Open Alert
    Sleep    2s
    # Handle Alert    Accept
    # Handle Alert    Dismiss
    # Handle Alert    leave
    Alert Should Be Present    Press a button!

Handle frames 
    Open Browser    ${base_url2}    ${browser}
    Maximize Browser Window
    #select first frame
    Select Frame    packageListFrame
    click link    org.openqa.selenium
    Unselect Frame
    
    Sleep    2s
    #select second frame
    Select Frame    packageFrame
    click link    WebDriver
    Unselect Frame

    Sleep    2s
    #Select class frame
    Select Frame    classFrame
    Click Link    Help
    Unselect Frame



