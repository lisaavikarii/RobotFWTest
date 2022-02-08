*** Settings ***
Documentation   Test scenario #3
Resource        resource.robot

*** Test Cases ***
Verify Calculations
     Open Test Page
     Calculate Basic Expression    16    4    /
     Verify Calculation Value      4
     Calculate Basic Expression  4  4  *
     Verify Calculation Value  16
     Verify History Session Count  2
     Close Browser