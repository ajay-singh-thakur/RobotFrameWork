*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://google.com
${url1}     https://bing.com

*** Test Cases ***
Multiple browsers test
    open browser    ${url}  ${browser}
    maximize browser window

    sleep   3

    open browser    ${url1}     ${browser}
    maximize browser window

    switch browser  1
    ${title}  get title
    log to console   ${title}

    switch browser  2
    ${title2}     get title
    log to console  ${title2}

    sleep   3
    close all browsers

