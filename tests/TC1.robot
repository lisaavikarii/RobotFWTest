*** Settings ***
Documentation   Test scenario #1
Resource        resource.robot

*** Test Cases ***
Verify Title
    Open Test Page
    Page Should Be Open  Super Calculator
    Close Browser

