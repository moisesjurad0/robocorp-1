*** Settings ***
Documentation       Template robot main suite.

Library    RPA.Browser.Selenium    auto_close=${False}
Library    RPA.Excel.Files


*** Tasks ***
Do Excel load into Page Form
    Open Example Web Site
    Fill form from Excel file loaded

*** Keywords ***
Open Example Web Site
    Open Available Browser    https://www.rpa-unlimited.com/youtube/robocorp-tutorial/

Fill and submit for every company row in excel file
    [Arguments]    ${company_row}
    Input Text    company-name    ${company_row}[Company Name]
    Input Text    company-contact    ${company_row}[Contact Person]
    Input Text    address    ${company_row}[Address]
    Submit Form

Fill form from Excel file loaded
    Open Workbook   input.xlsx
    ${companies_table}    Read Worksheet As Table    header=${True}
    Close Workbook

    FOR    ${company_row}    IN    @{companies_table}        
        Fill and submit for every company row in excel file    ${company_row}
    END
    