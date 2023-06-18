

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary

*** Variables ***


${base_url}    https://demo.automationtesting.in/Windows.html
${base_url2}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${base_url3}    https://www.bing.com/new
${browser}    chrome

*** Test Cases ***
Navigation Test
    Open Browser    ${base_url2}    ${browser}
    Maximize Browser Window    
    Sleep    3s
    # Click Element    //button[normalize-space()='Login']
    Input Text    //input[@placeholder='Username']    Admin
    # Input Text    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123

    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img    /home/adityadwic/RobotTesting/Robot Web Automation/screenshoot/logo.png
    Capture Page Screenshot    /home/adityadwic/RobotTesting/Robot Web Automation/screenshoot/page.png
    
*** Keywords ***


