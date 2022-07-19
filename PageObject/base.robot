*** Settings ***
Library         AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     8.1
${DEVICE_NAME}          emulator-5554
${ACTIVITY_NAME}        com.example.myapplication.MainActivity
${PACKAGE_NAME}         com.example.myapplication

*** Keywords ***
Open Flight Application
  Open Application    ${REMOTE_URL}
  ...                 platformName=${PLATFORM_NAME}
  ...                 platformVersion=${PLATFORM_VERSION}
  ...                 deviceName=${DEVICE_NAME}
  ...                 automationName=UiAutomator2
  ...                 newCommandTimeout=2500
  ...                 appActivity=${ACTIVITY_NAME}
  ...                 appPackage=${PACKAGE_NAME}

#*** Test Cases ***
#User Should Be Able To See Homepage
 # Open Flight Application
  #Element Should Be Visible       com.example.myapplication:id/imageView4
  #Element Should Be Visible
 

#{
 # "appium:platformName": "android",
  #"appium:platformVersion": "8.1",
  #"appium:deviceName": "emulator-5554",
  #"appium:appPackage": "com.example.myapplication",
  #"appium:appActivity": "com.example.myapplication.MainActivity"
#}