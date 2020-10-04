*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
#    sleep   5
    set selenium speed  2 seconds       # applicable for every statments
    select radio button     Gender      M
    input text  name:FirstName  Ajay
    input text  xpath://input[@name='LastName']     Thakur
    input text  xpath://input[@name='Email']    aj1@gmail.com
    input text  xpath://input[@name='Password']     abcdefgh
    input text  xpath://input[@name='ConfirmPassword']      abcdefgh

    ${speed}=   get selenium speed
    log to console  ${speed}
