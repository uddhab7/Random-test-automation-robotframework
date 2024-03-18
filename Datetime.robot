*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}             Chrome
${URL}                 https://demo.automationtesting.in/Register.html
${Year_dropdown}        //*[@id="yearbox"]
${selected_year}        2015
${Monts_dropdown}       //*[@id="basicBootstrapForm"]/div[11]/div[2]/select
${selected_month}       January
${Day_dropdrwn}         //*[@id="daybox"]
${selected_day}         8


*** Test Cases ***
Select Manual Date of Birth
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    sleep   2

     Select From List By Value    ${Year_dropdown}    ${selected_year}
     sleep  2

     Select From List By Value     ${Monts_dropdown}    ${selected_month}
    sleep   2

    Select From List By Value       ${Day_dropdrwn}     ${selected_day}
    sleep   2
    

    # Add additional test steps or verifications here

    Sleep    7s   
    # Add a small delay for visual verification
    






