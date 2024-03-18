*** Settings ***
Library          SeleniumLibrary
Resource         ../MYResource/Login_resources.robot
Suite Setup      Start testcase     ${login URL}    ${browser}
Suite Teardown   finish testcase
Test Template    Invalid Login


*** Test Cases ***
Right user empty passw    fonepay123@gmail.com    ${empty}
Right user wrong passw    fonepay123@gmail.com    XZY
Wrong user right passw    fonepay1234@gmail.com   Fonepay123@
Wrong user empty passw    fonepay1235@gmail.com   ${empty}
Wrong user wrong passw    fonepay1236@gmail.com   XYZA

*** Keywords ***
Invalid Login 
    [Arguments]   ${username}   ${password}
    Input username   ${username} 
    Input password   ${password}
    Click login 
    #Error message should be visible
