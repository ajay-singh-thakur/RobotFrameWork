*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://seleniumhq.github.io/selenium/docs/api/java/index

*** Test Cases ***
Testing Frames
    open browser    ${url}  ${browser}
    maximize browser window
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep   3
    select frame    packageFrame
    click link      WebDriver
    unselect frame
    sleep   3
    select frame    classFrame
    click link      Index
    sleep   3
    close browser

