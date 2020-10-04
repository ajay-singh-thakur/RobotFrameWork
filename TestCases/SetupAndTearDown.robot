*** Settings ***

Suite Setup         log to console     Opening Browser
Suite Teardown      log to console      Closing Browser


Test Setup      log to console      Login to Application
Test Teardown   log to console      Logout from Application


*** Test Cases ***
TC1 Prepaid recharge test
    log to console      This is Prepaid recharge test
TC2 Postpaid recharge test
    log to console      This is postpaid recharge test
TC3 Search
    log to console      This is search test case
TC4 Advance search
    log to console      This is Advance search
