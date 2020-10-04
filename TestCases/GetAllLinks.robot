*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
All links Test
    open browser    http://demowebshop.tricentis.com/register       chrome
    maximize browser window

    ${ecount}=  get element count       xpath://a
    log to console    ${ecount}
    log     ${ecount}
    sleep   3

    @{LinkItems}        create list
    : FOR   ${i}    IN RANGE   1   ${ecount}+1
    \   ${linktest}=     get text    xpath:(//a)[${i}]
    \   log to console  ${linktest}
    close browser

