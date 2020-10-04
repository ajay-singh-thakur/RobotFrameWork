*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
table Validation Test
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${rowcount}=    get element count   xpath://table[@name='BookTable']/tbody/tr
    ${colcount}=    get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rowcount}
    log to console  ${colcount}
    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console  ${data}

    table column should contain     xpath://table[@name='BookTable']    2   Author
    table row should contain        xpath://table[@name='BookTable']    5   Selenium
    table cell should contain              xpath://table[@name='BookTable']      4   3   Javascript
    table header should contain     xpath://table[@name='BookTable']    Subject

    sleep   3
    close browser

