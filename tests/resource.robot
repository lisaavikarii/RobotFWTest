*** Settings ***
Documentation   A resource file with reusable keywords and variables.
Library         SeleniumLibrary

*** Variables ***
${SERVER}         juliemr.github.io/protractor-demo
${BROWSER}        Firefox
${URL}            http://${SERVER}/

*** Keywords ***
Open Test Page
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

Page Should Be Open
    [Arguments]     ${title}
    Title Should Be     ${title}

Close Browser
    Close All Browsers  

Calculate Basic Expression
    [Arguments]     ${firstValue}  ${secondValue}  ${operator}
    Input Text  xpath://*[@ng-model="first"]    ${firstValue}
    Input Text  xpath://*[@ng-model="second"]   ${secondValue}
    Select From List By Label  xpath://*[@ng-model="operator"]  ${operator}
    Click Button   id:gobutton

Verify Calculation Value
    [Arguments]     ${expected}
    Wait Until Element Contains  xpath://*[@ng-model="first"]  ${EMPTY}
    Sleep   2
    ${result} =     Get Text  class:ng-binding
    Should be equal     ${result}   ${expected}
    
Verify History Session Count
    [Arguments]      ${expected}
    ${count} =  Get Element Count  xpath://*[@ng-repeat="result in memory"]
    ${count} =  Convert To String   ${count}
    Should be equal  ${count}  ${expected}