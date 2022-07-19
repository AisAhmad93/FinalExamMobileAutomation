*** Settings ***
Resource            ../pageObject/base.robot
Resource            ../pageObject/Loginpage/Login.robot
Resource            ../pageObject/Homepage/Homepage.robot
Suite Setup         Open Flight Application
Suite Teardown      Close Application

*** Test Cases ***
User Should Be Able Login With Valid Data
    [Documentation]     Test to verify user should be able login with valid data
    Verify Homepage Appears
    Tap Sign In Button In Homepage
    Input Username In Login page        Username=support@ngendigital.com
    Input Password In Login Page        Password=abc123
    Verify User Success To Login