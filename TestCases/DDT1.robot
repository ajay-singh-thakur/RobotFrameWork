*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browsers
Test Template       Test Invalid login


*** Test Cases ***              username                password
Right user empty password       admin@yourstore.com     ${empty}
Right user wrong password       admin@yourstore.com     xyz
Wrong user empty password       admin@yourstore.com     ${empty}
Wrong user right password       adm@yourstore.com       admin
Wrong user wrong password       adm@yourstore.com       xyz
#Right user RIght password       admin@yourstore.com     admin



*** Keywords ***
Test Invalid login
    [Arguments]         ${username}     ${password}
    Input User Name     ${username}
    Input pswd          ${password}
    Click login button
    Error message should be visible
