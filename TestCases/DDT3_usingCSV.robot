*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver      ../TestData/LoginData.csv      sheet_name=Sheet1

Suite Setup         Open My Browser
Suite Teardown      Close Browsers
Test Template       Invalid Login


*** Test Cases ***
LoginTestwithCSV using ${username} and ${password}



*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input User Name     ${username}
    Input pswd          ${password}
    Click login button
    Error message should be visible