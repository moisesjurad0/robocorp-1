*** Settings ***
Documentation       Template robot main suite.

*** Variables ***
${myName}    Moisés

*** Tasks ***
Minimal task
    ${myName}    Set Variable    ${myName} Daniel
    Log    ${myName}
