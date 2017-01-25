*** Settings ***
Documentation           This is a simple test with Robot Framework
Library                 Selenium2Library

*** Variables ***
${SERVER}               http://google.com
${BROWSER}              firefox
${DELAY}                0


*** Keywords ***
Open Browser To Login Page
    System.setProperty("webdriver.gecko.driver","/Users/goutham.r/Desktop/geckodriver");

    Open Browser        ${SERVER}   ${BROWSER}

    Maximize Browser Window

    Set Selenium Speed  ${DELAY}


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser