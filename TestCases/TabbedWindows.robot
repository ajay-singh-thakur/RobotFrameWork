*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Tabbed Windows test
    open browser    ${url}  ${browser}
    click element   xpath://*[@id="Tabbed"]/a/button
    sleep   3
    select window   title=SeleniumHQ Browser Automation
    click element   xpath://a[text()='Support']
    sleep   3
    close all browsers
