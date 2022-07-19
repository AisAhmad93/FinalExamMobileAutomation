*** Settings ***
Documentation       Login related keywords
Variables           login_locators.yaml

*** Keywords ***
Verify Login Page Appears
    Wait Until Element Is Visible
    Element Should Be Visible

Input Username In Login Page
    [Arguments]             ${Username}
    Wait Until Element Is Visible               ${VerifyTextEmail}
    Input Text              ${usernameInput_loginpage}      ${Username}

Input Password In Login Page
    [Arguments]             ${password}
    Input Text              ${passwordInput_loginpage}      ${Password}

Tap Sign In Button In Login Page
    Click Element           ${signinbutton_loginpage}

Verify Name User
    Wait Until Element Is Visible       ${CekIn}
    Element Should Be Visible           ${username_homepage}