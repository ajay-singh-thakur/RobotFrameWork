*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Scrolling Test
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
#    execute javascript  window.scrollTo(0,4500)     #- 0 horizontal, 1500 is for vertical scrolling
#    scroll element into view    xpath://img[@alt='Flag of India']
    execute javascript  window.scrollTo(0,document.body.scrollHeight)  # bottom of the page
    sleep   3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #start of the page
    sleep   3
    close browser
