*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
${url1}     http://automationpractice.com/index.php



*** Test Cases ***
MyTestCases close browser
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    ${url1}     ${browser}
    maximize browser window

    # close browser
    close all browsers