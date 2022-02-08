*** Settings ***
Documentation   Test scenario #2
Resource        resource.robot

*** Test Cases ***
Verify Calculations
     Open Test Page
     Calculate Basic Expression    8    8    +
     Verify Calculation Value      16
     Close Browser