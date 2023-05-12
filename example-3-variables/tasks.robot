*** Settings ***
Documentation       Template robot main suite.

*** Variables ***
${myName}    Moisés
${year}    ${2023}

*** Tasks ***
Minimal task
    ${myName}    Set Variable    ${myName} Daniel
    Log    ${myName}
    
    ${newYear}    Evaluate    ${year}+1
    Log    ${newYear}
