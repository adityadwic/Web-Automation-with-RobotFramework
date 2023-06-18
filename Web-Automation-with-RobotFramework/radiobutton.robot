

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    http://the-internet.herokuapp.com/checkboxes
${browser}    chrome

*** Test Cases ***
login Test
    Open Browser    ${base_url}    ${browser}
    Maximize Browser Window

    #Selecting Radio button
    # Select Radio Button    sex    Female


    #Selecting checkbox
    Select Checkbox    (//input[@type='checkbox'])[1]
    Sleep    3s
    Unselect Checkbox    (//input[@type='checkbox'])[1]
    

