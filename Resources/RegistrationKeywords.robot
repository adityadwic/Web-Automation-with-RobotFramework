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

# Clicks the 'Register' link on the page.
Click Register Link
    Click Link    ${link_reg}

# Enters the provided first name into the corresponding input field.
Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

# Enters the provided last name into the corresponding input field.
Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

# Enters the provided phone number into the corresponding input field.
Enter Phone Number
    [Arguments]    ${phoneNumber}
    Input Text    ${txt_phone}    ${phoneNumber}

# Enters the provided email address into the corresponding input field.
Enter Email
    [Arguments]    ${emailAddress}
    Input Text    ${txt_email}    ${emailAddress}

# Enters the provided address into the corresponding input field.
Enter Adress
    [Arguments]    ${address}
    Input Text    ${txt_address}    ${address}

# Enters the provided city into the corresponding input field.
Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}

# Enters the provided state into the corresponding input field.
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

# Enters the provided postal code into the corresponding input field.
Enter Postal Code
    [Arguments]    ${postalCode}
    Input Text    ${txt_postalCode}    ${postalCode}

# Selects 'INDONESIA' from the country drop-down list.
Select Country
    Select From List By Value    ${drp_country}    INDONESIA

# Enters the provided username into the corresponding input field.
Enter Username
    [Arguments]    ${userName}
    Input Text    ${txt_userName}    ${userName}

# Enters the provided password into the corresponding input field.
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_passwrod}    ${password}

# Enters the provided confirmation password into the corresponding input field.
Enter Confirmation Password
    [Arguments]    ${confpassword}
    Input Text    ${txt_confirmPassword}    ${confpassword}

# Clicks the 'Submit Registration' button.
Click Submit Registration
    Click Button    ${btn_SubmitRegist}

# Verifies that the title of the current page is 'Login: Mercury Tours.'
Verify Successfull Login
    Title Should Be    Login: Mercury Tours

# Closes all open browser windows.
Close my browser
    Close All Browsers

