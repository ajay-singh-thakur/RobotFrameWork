*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resource.robot



*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register


*** Test Cases ***
TC1
    ${pagetitle}=  LaunchBrowser   ${url}      ${browser}
    log to console      ${pagetitle}
    log     ${pagetitle}
    input text  xpath://input[@name='FirstName']    Ajay
    input text  xpath://input[@name='LastName']     Thakur
    close browser

