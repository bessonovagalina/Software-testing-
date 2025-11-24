*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

${BROWSER}    chrome

*** Keywords ***

*** Test Cases ***
PARABANK_TEST
    Open Parabank
    Sign Up
    Log in
    Account Overview
    Transfer Funds
    Find Transactions
    Log Out
