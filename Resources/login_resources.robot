*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}      https://admin-demo.nopcommerce.com



*** Keywords ***
Open My Browser
    open browser    ${URL}      ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to       ${URL}

Input User Name
    [Arguments]     ${username}
    input text      xpath://input[@name='Email']      ${username}

Input pswd
    [Arguments]     ${password}
    input text      xpath://input[@name='Password']      ${password}

Click login button
    click element       xpath://input[@value='Log in']

Click Logout Link
    click link       xpath:////a[text()='Logout']

Error message should be visible
    page should contain     Login was unsuccessful

Dashboard should be visible
    page should contain     Dashboard