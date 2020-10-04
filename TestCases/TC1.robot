*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://admin-demo.nopcommerce.com/



*** Test Cases ***
Logintest
    open browser    ${url}    ${browser}
    loginToApplication



*** Keywords ***
loginToApplication
    input text  xpath://input[@id='Email']  clear
    input text  xpath://input[@id='Email']  Admin@yourstore.com
    input text  xpath://input[@id='Password']   clear
    input text  xpath://input[@id='Password']   admin
    click element   xpath://input[@value='Log in']
    close browser




