*** Settings ***
Documentation       Homepage keyword related
Variables           Homepage_locators.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible       ${logo_homepage}
    Element Should Be Visible           ${footer}

Tap Sign In Button In Homepage
    Click Element                       ${loginbutton_homepage}   

Verify User Success To Login
    Wait Until Element Is Visible       ${username_homepage}            