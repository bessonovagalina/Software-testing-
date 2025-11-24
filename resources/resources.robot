*** Settings ***
Library    SeleniumLibrary
Variables  ./locators.py
Variables  ./testData.py

*** Variables ***
${REMOTE_URL}    https://%{BROWSERSTACK_USERNAME}:%{BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub

*** Keywords ***

Open Parabank
    Open Browser    ${baseUrl}    browser=chrome       remote_url=${REMOTE_URL}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//a[contains(text(),"Register")]    timeout=20

Sign Up
    Click Element    xpath=//a[contains(text(),'Register')]
    Wait Until Element Is Visible    ${UserFirstnameField}    timeout=20

    Input Text    ${UserFirstnameField}       ${Firstname}
    Input Text    ${UserLastnameField}        ${lastname}
    Input Text    ${UserAddress}              ${address}
    Input Text    ${UserCity}                 ${city}
    Input Text    ${UserState}                ${state}
    Input Text    ${UserZipCode}              ${zipcode}
    Input Text    ${UserPhone}                ${phone}
    Input Text    ${UserSSN}                  ${SSN}

    Input Text    ${UserName}             ${name}
    Input Password    ${UserPassword}     ${password}
    Input Password    ${UserConfirm}      ${confirm}

    Click Element    ${finishRegistr}
    Sleep    2s

Log In
    Wait Until Element Is Visible    ${signUpUsername}    timeout=20

    Input Text        ${signUpUsername}      ${loginUserName}
    Input Password    ${signUpPassword}      ${loginPassword}

    Click Element     ${signUpFormButton}
    Sleep    2s


Account Overview
    Click Element    xpath=//a[contains(text(),'Accounts Overview')]
    Wait Until Element Is Visible    ${account}    timeout=20
    Sleep    1s

    # Переходим в конкретный аккаунт
    Click Element    ${account}

    # Ждём, пока появятся фильтры по операциям
    Wait Until Element Is Visible    ${activityPeriod}    timeout=20
    Sleep    1s

    Click Element    ${activityPeriod}
    Select From List By Index    ${activityPeriod}    6
    Sleep    1s

    Select From List By Label    ${activityType}    Credit
    Sleep    1s

    Click Element    ${goButton}
    Sleep    2s

    Page Should Contain Element    ${transactionsTable}
    Sleep    1s


Transfer Funds
    Click Element    ${transferFunds}
    Wait Until Page Contains Element    ${amount}    timeout=20
    Sleep    1s

    Input Text    ${amount}    100
    Click Element    ${transfer}
    Sleep    2s

Find Transactions
    Click Element    ${findTransaction}
    Wait Until Element Is Visible    ${findTransactionByDate}    timeout=20

    Input Text    ${findTransactionByDate}    23-10-2010
    Sleep    1s

    Click Element    ${find}
    Sleep    2s

Log Out
    Click Element    ${logOut}
    Sleep    1s

Close Browser
    Close All Browsers
