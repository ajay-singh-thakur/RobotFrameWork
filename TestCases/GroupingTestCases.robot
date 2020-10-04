*** Settings ***



*** Test Cases ***
TC1 User Registration Test
    [Tags]  Regression
    log to console      This is user registration test
    log to console      user registration test is over
TC2 Login test
    [Tags]  Sanity
    log to console      This is Login test
    log to console      Login test is over
TC3 Change user setting
    [Tags]  Regression
    log to console      This change user setting test
    log to console      user change setting test is over
TC4 Logout Test
    [Tags]  Sanity
    log to console      This is logout test
    log to console      Logout test is over
