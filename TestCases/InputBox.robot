*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://admin-demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    title should be  Your store. Login
    ${"email_txt"}  set variable    xpath://input[@id='Email']

    element should not be visible    ${"email_txt"}
    element should not be enabled    ${"email_txt"}
    clear element text  ${"email_txt"}
    sleep   3
    input text  ${"email_txt"}  admin@yourstore.com
    Sleep   3
    clear element text  ${"email_txt"}
    Sleep   3
    close browser



*** Keywords ***
