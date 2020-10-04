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

    ${time}=   get selenium speed
    log to console  ${time}

    set selenium timeout    10 econds       #This is applicable only for below statament, will wait for 10 sec not 5 sec as default
    wait until page contains    Registration    # 5 seconds default, as soon as element available within 5 sec
    select radio button     Gender      M
    input text  name:FirstName  Ajay
    input text  xpath://input[@name='LastName']     Thakur
    input text  xpath://input[@name='Email']    aj1@gmail.com
    input text  xpath://input[@name='Password']     abcdefgh
    input text  xpath://input[@name='ConfirmPassword']      abcdefgh

    ${speed}=   get selenium speed
    log to console  ${speed}
    sleep   3
    close browser
