*** Settings ***
Documentation       Homepage keywords related
Resource            ../pageObject/Homepage/Homepage.robot
Resource            ../pageObject/base.robot
Suite Setup         Open Flight Application
Suite Teardown      Close Application

*** Test Cases ***
User Should Be Able To See Homepage
    [Documentation]     Test to verify that user should be able to see homepage
    Verify Homepage Appears
    Tap Sign In Button In Homepage
    Verify User Success To Login