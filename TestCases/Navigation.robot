*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com
${url1}     https://www.bing.com


*** Test Case ***
NavigationTest
    open browser    ${url}  ${browser}
    ${loc}=     get location
    log to console  ${loc}

    sleep   3

    go to    ${url1} ${browser}
    ${loc1}=    get location
    log to console  ${loc1}

    sleep   3

    go back
    ${loc2}=    get location
    log to console  ${loc}

    sleep   3

    close all browsers
