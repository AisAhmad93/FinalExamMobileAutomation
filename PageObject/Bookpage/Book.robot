*** Settings ***
Documentation       Booking related keywords
Variables           book_locators.yaml

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
    Element Should Be Visible           ${ButtonBook}
    
User Click Book
    Click Element                       ${Buttonbook}

Verify Form Booking
    Wait Until element Is Visible       ${VerifyFormBooking}
    Element Should Be Visible           ${VerifyTextCity}
        
User Click Oneway
    Click Element           ${OneWay}
    Element Should Be Visible   ${VerifyFormBooking}

User Selects Departure From Chicago          
    Get Matching Xpath Count            ${Chicago2}

User Selects Destination To Paris
    Get Matching Xpath Count            ${Paris}

User Chooses First Class
    Click Element                       ${ClickButtonClass}
    Tap                                 ${First}

User Determines The Departure Schedule
    Click Element               ${TapStart}
    Wait Until Element Is Visible  ${ButtonOkCalendar} 
    Tap                       ${Start8August}
    Tap                                 ${ButtonOkCalendar}
    Click Element               ${TapEnd}
    Wait Until Element Is Visible   ${ButtonOkCalendar}
    Tap                       ${End8August}
    Tap                                 ${ButtonOkCalendar}

Users Book Flights And Hotels
    Click Element                   ${Hotel}

User Tap Check Box Day
    Click Element                   ${CheckBox}
    Element Should Be Visible              ${ButtonBook}

User Click Submit
    Click Element                   ${ButtonBook}