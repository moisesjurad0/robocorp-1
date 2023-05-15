*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Browser.Selenium    auto_close=${False}

*** Tasks ***
Select from DropDown for do an example
    Open Available Browser    https://www.rpa-unlimited.com/youtube/RPA-practice-forms/
    Sleep    1
    Select From List By Label    company    Royal Dutch Oyster
    Sleep    0.5
    Select From List By Value    company    Card Services
    Sleep    0.5
    Select From List By Index    company    1
