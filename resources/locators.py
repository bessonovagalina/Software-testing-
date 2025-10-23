baseUrl = 'https://parabank.parasoft.com/parabank/index.htm'

logInButton = '//*[@id="loginPanel"]/p[2]/a'

# Log in

UserFirstnameField = '//*[@id="customer.firstName"]'
UserLastnameField = '//*[@id="customer.lastName"]'
UserAddress = '//*[@id="customer.address.street"]'
UserCity = '//*[@id="customer.address.city"]'
UserState = '//*[@id="customer.address.state"]'
UserZipCode = '//*[@id="customer.address.zipCode"]'
UserPhone = '//*[@id="customer.phoneNumber"]'
UserSSN = '//*[@id="customer.ssn"]'
UserName = '//*[@id="customer.username"]'
UserPassword = '//*[@id="customer.password"]'
UserConfirm = '//*[@id="repeatedPassword"]'

finishRegistr = '//*[@value="Register"]'

# Sign Up

signUpUsername = '//*[@id="loginPanel"]/form/div[1]/input'
signUpPassword = '//*[@id="loginPanel"]/form/div[2]/input'
signUpFormButton = '//*[@id="loginPanel"]/form/div[3]/input'

# Accounts Overview
account = '//*[@id="accountTable"]/tbody/tr[1]/td[1]/a'
activityPeriod = '//*[@id="month"]'
activityType = '//*[@id="transactionType"]'
goButton = '//*[@id="activityForm"]/table/tbody/tr[3]/td[2]/input'
transactionsTable = '//*[@id="accountActivity"]'

# Transfer funds

transferFunds = '//*[@id="leftPanel"]/ul/li[3]/a'
amount = '//*[@id="amount"]'
transfer = '//*[@id="leftPanel"]/ul/li[3]/a'

#Find Transactions

findTransaction = '//*[@id="leftPanel"]/ul/li[5]/a'
findTransactionByDate = '//*[@id="transactionDate"]'
find = '//*[@id="findByDate"]'

# Log out

logOut = '//*[@id="leftPanel"]/ul/li[8]/a'