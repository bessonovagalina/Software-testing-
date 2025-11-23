*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
*** Keywords ***
Sign up
    Open Browser    ${baseUrl}      Chrome
    wait until page contains element    ${logInButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${logInButton}
    wait until page contains element     ${UserFirstnameField}    timeout=80      error=UserFirstnameFieldNotFound
    sleep   1s
    input text      ${UserFirstnameField}      ${Firstname}
    input text      ${UserLastnameField}       ${lastname}
    input text      ${UserAddress}            ${address}
    input text      ${UserCity}                ${city}
    input text      ${UserState}                ${state}
    input text      ${UserZipCode}              ${zipcode}
    input text      ${UserPhone}                ${phone}
    input text      ${UserSSN}                  ${SSN}
    input text      ${Username}                 ${name}
    input text      ${UserPassword}             ${password}
    input text      ${UserConfirm}             ${confirm}

    Sleep    1s
    Click Element    ${finishRegistr}
    Sleep    2s

Close Browser
    Close All Browsers

Log in
    Open Browser    ${baseUrl}      Chrome
    wait until page contains element     ${signUpUsername}    timeout=80      error=signUpUsernameNotFound
    sleep   1s
    Input Text    ${signUpUsername}    ${loginUserName}
    Sleep    2s
    Input Password    ${signUpPassword}    ${loginPassword}
    Sleep    2s
    Click Element    ${signUpFormButton}
    Sleep    2s

Account Overview

    Click Element    xpath=//a[contains(text(),'Accounts Overview')]
    Wait Until Element Is Visible    id=accountTable    timeout=20
    Sleep    1s

    Click Element    ${activityPeriod}

    # Выбор периода
    Select From List By Index    ${activityPeriod}    6
    Sleep    1s

    # выбор транзакций
    Select From List By Label    ${activityType}    Credit
    Sleep    1s

    # Применяем фильтр
    Click Element    ${goButton}
    Sleep    2s

    # Проверка, что таблица транзакций отображается
    Page Should Contain Element    ${transactionsTable}
    Sleep    3s


Transfer funds

    Click element     ${transferFunds}
    sleep    1s
    input text     ${amount}    10000000
    sleep     1s
    click element     ${transfer}
    sleep    3s

Find Transactions
    
    click element    ${findTransaction}
    sleep    1s
    input text    ${findTransactionByDate}    23-10-2010
    sleep    1s
    click element    ${find}
    
Log out
    
    click element    ${logOut}
    sleep    3s
