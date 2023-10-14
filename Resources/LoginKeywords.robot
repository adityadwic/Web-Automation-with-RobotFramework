*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
# Opens the specified browser and navigates to the provided URL.
Open my Browser 
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

# Enters the provided username into the username input field.
Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}

# Enters the provided password into the password input field.
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}

# Clicks the 'Sign In' button on the login page.
Click SignIn
    Click Button    ${btn_signIn}

# Verifies that the title of the current page is 'Login: Mercury Tours.'
Verify Successfull Login
    Title Should Be    Login: Mercury Tours

# Closes all open browser windows.
Close my browser
    Close All Browsers
