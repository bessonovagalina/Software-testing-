*** Settings ***
Resource  ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
PARABANK_TEST
    Sign Up
    Log in
    Account Overview
    Transfer funds
    Find Transactions
    Log Out
