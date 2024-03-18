*** Settings ***
Library    DateTime
Library    SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://demo.automationtesting.in/Register.html
#${YEAR_DROPDOWN}      //*[@id="yearbox"]
${MONTH_DROPDOWN}     //*[@id="basicBootstrapForm"]/div[11]/div[2]/select
${DAY_DROPDOWN}       //*[@id="daybox"]

*** Test Cases ***
Validate DOB on Web Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Get the current year, month, and day
    #${current_year}=    Get Current Date    result_format=%Y
    ${current_month}=   Get Current Date    result_format=%m
    ${current_day}=     Get Current Date    result_format=%d
    sleep   5

    # Log the generated date components
    #Log    Current Year: ${current_year}
    Log    Current Month: ${current_month}
    Log    Current Day: ${current_day}
    sleep   5

    # Select the generated year, month, and day from dropdowns
    #Select From List By Value    ${YEAR_DROPDOWN}    ${current_year}
    Select From List By Label    ${MONTH_DROPDOWN}  
   ${current_month}

    sleep   3
    Select From List By Label    ${DAY_DROPDOWN}     ${current_day}

    # Add additional test steps or verifications here

    Sleep    2s   # Add a small delay for visual verification
    Close Browser
