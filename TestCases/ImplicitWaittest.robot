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

    ${implicittime}=    get selenium implicit wait
    log to console      ${implicittime}

    set selenium implicit wait  10 seconds

    ${implicittime}=    get selenium implicit wait
    log to console      ${implicittime}

    select radio button     Gender      M
    input text  name:FirstName  Ajay
    input text  xpath://input[@name='LastName1']     Thakur
    input text  xpath://input[@name='Email']    aj1@gmail.com
    input text  xpath://input[@name='Password']     abcdefgh
    input text  xpath://input[@name='ConfirmPassword']      abcdefgh

    ${speed}=   get selenium speed
    log to console  ${speed}
    sleep   3
    close browser
