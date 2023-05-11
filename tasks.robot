*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${FALSE}

*** Tasks ***
Open the website of the CRM Application
    Open Website

Add one Customer to the CRM System
    Add Customer to CRM System

*** Keywords ***
Open Website
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Add Customer to CRM System
    Input Text    company-name    moisesJ
    Input Text    company-contact    moisesJ Co.
    Input Text    address    myAddress
    Input Text    zipcode    15147
    Input Text    city    Lima
    Input Text    country    Peru
    Input Text    telephone    999999999
    Input Text    email    myemail@myemail123.com
    Submit Form