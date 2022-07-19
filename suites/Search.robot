*** Settings ***
Resource            ../pageObject/base.robot
Resource            ../PageObject/Searchpage/Search.robot
Suite Setup         Open Flight Application
Suite Teardown      Close Application

*** Test Cases ***
User Check Order
    [Documentation]         the user checks the order that has been made
    Verify Home Login Appears
    User Click Button Login
    User Verify Login Page
    Input Username In Login Page
    Input Password In Login Page
    User Click Button Sign
    Verify Form User
    Click Button Search
    Verify Search Page
    User Input Number Order