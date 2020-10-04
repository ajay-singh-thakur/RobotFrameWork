*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com

*** Test Cases ***
Handle Alerts
    open browser    ${url}  ${browser}
    maximize browser window
    click element   xpath://button[text()='Click Me']
    sleep   3
#    handle alert    accept
#    handle alert    dismiss
#    handle alert    leave
#    alert should be present     Press a button!
    alert should not be present     Press a button!
    close browser
