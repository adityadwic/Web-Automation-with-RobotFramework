*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***

${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Registration Test
    Open my Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    Testing
    Enter LastName    ADC
    Enter Phone Number    089512341234
    Enter Email    testingadc@gmail.com
    Enter Adress    Jalan Palagan no 10
    Enter City    Batam
    Enter State    Bengkong
    Enter Postal Code    123123
    Select Country
    Enter Username    testingadc
    Enter Password    testingadc
    Enter Confirmation Password    testingadc

    Sleep    3 seconds



