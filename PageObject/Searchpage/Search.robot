*** Settings ***
Documentation       Booking related keywords
Variables           search_locators.yaml         

*** Keywords ***
Verify Home Login Appears
    Element Should Be Visible       ${VerifyToolBar}

User Click Button Login
    Click Element                   ${ButtonLoginHome}

User Verify Login Page
    Wait Until Element Is Visible    ${InputUsername}

Input Username In Login Page

    Input Text                        ${InputUsername}      support@ngendigital.com

Input Password In Login Page

    Input Text                         ${InputPassword}      abc123

User Click Button Sign
    Click Element                       ${ButtonSignin}
    
Verify Form User
    Wait Until Element Is Visible       ${VerifyAccountName}
    Element Should Be Visible           ${VerifyToolBar}

Click Button Search
    Tap                                  ${ButtonSearch}

Verify Search Page
    Wait Until Element Is Visible           ${VerifyNumber}
    Element Should Be Visible               ${InputNumber}

User Input Number Order
    Input Text                               ${InputNumber}     DA935
    Click Element                               ${ConfrimedOrder}
    Sleep                                       3s
