*** Settings ***
Documentation       Template robot main suite.

*** Variables ***
${myName}    Moisés
${year}    ${2023}
@{thisIsAList}    cat    dog    ekidna    nice cuy    llama

*** Tasks ***
Minimal task
    ${myName}    Set Variable    ${myName} Daniel
    Log    ${myName}
    
    ${newYear}    Evaluate    ${year}+1
    Log    ${newYear}
    
    Log    ${thisIsAList}
    Log    ${thisIsAList}[3]
