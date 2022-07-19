*** Settings ***
Resource            ../pageObject/base.robot
Resource            ../PageObject/Bookpage/Book.robot
Suite Setup         Open Flight Application
Suite Teardown      Close Application

*** Test Cases ***
user fills out travel form
    [Documentation]         test user fills out the travel form
    Verify Home Login Appears
    User Click Button Login
    User Verify Login Page
    Input Username In Login Page
    Input Password In Login Page
    User Click Button Sign
    Verify Form User
    User Click Book
    Verify Form Booking
    User Click Oneway
    User Selects Departure From Chicago
    User Selects Destination To Paris
    User Determines The Departure Schedule
    Users Book Flights And Hotels
    User Tap Check Box Day
    #User Click Submit