

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    http://the-internet.herokuapp.com/dropdown
${browser}    chrome

*** Test Cases ***
login Test
    Open Browser    ${base_url}    ${browser}
    Maximize Browser Window
    #Select list 
    Select From List By Label    dropdown    Option 1
    Sleep    3s
    Select From List By Index    dropdown    2
    Sleep    2s

