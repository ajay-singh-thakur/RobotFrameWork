*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Handling DropDowns and Lists
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  2
    select from list by label   continents  Europe
    select from list by index   continents  6
#    select from list by value   continents  value

    #list Box
    select from list by label   selenium_commands   Wait Commands
    select from list by label   selenium_commands   Switch Commands
    unselect from list by label     selenium_commands   Wait Commands
    close browser

