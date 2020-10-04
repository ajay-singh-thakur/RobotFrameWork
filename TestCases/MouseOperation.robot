*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Mouse Action Test
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    # Right Click operation
    open context menu   xpath://span[text()='right click me']
    sleep   3


    # Double click action
    go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[text()='Copy Text']
    sleep   3

    # Drag and Drop Action
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   xpath://div[@id='box6']     xpath://div[text()='Italy']
    sleep   3

    close browser
