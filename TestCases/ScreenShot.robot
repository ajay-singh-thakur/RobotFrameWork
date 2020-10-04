*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
LoginTC ScreenShot
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    input text  xpath://input[@id='txtUsername']    Admin
    input text  xpath://input[@id='txtPassword']    admin123

#    capture element screenshot      xpath://*[@id="divLogo"]/img    E:/SeleniumFramework/Robot/RobotTest1/ScreenShot/logo.png
#    capture page screenshot     E:/SeleniumFramework/Robot/RobotTest1/ScreenShot/loginpage.png

    capture element screenshot      xpath://*[@id="divLogo"]/img    logo.png
    capture page screenshot     loginpage.png

    close browser

