

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***

${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/
${user}    tutorial
${pwd}    tutorial


*** Test Cases ***
login Test
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Sleep    3 seconds
    Verify Successfull Login
    Close my browser



