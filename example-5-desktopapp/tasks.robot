*** Settings ***
Documentation       Template robot main suite.
Library    RPA.Windows

*** Tasks ***
Add Customer to CRM App
    Windows Run    C:\\m01.apps\\MyCRM.exe
    Control Window    My CRM (Sample App)
    Send Keys    id:textBoxPeopleFirstName    qqeirom
    Click    id:radioButtonFemale
    Select    id:comboBoxPeopleAddressState    WA
    Click    id:checkBox1
    Click    name:Other
    Click    id:button1
    Click    id:2
