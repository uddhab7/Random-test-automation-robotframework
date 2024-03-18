*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://demo.automationtesting.in/Register.html
${DROPDOWN_XPATH}     //*[@id="Skills"]

*** Test Cases ***
Choose Option from Dropdown Using Keyboard Input
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Click on the dropdown to open it
    Click Element    ${DROPDOWN_XPATH}

    # Execute JavaScript to capture keyboard input and set the selected option
    ${selected_option}=    Execute Javascript    return prompt("Enter the starting letters of the option to select:")
    Execute Javascript    document.querySelector('${DROPDOWN_XPATH}').value = '${selected_option}'

    # Add additional test steps or verifications here

    Sleep    2s   # Add a small delay for visual verification
    Close Browser
