*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://demo.automationtesting.in/Register.html
#${Dropdown_xpath}     //*[@id="basicBootstrapForm"]/div[8]/label
#${Select_option}      APIs

#${MALE_RADIO_BUTTON}  Gender  male

${File_path}    "C:\Users\Ram\Desktop\BaraPokhari.jpg"
${File Input Locator}   //*[@id="imagesrc"]
#${country_Input_locator}    //*[@id="countries"]/option
#${Manually_entered_country}    Nepal

*** Test Cases ***
abc
    Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window
    sleep   2s

# Select the desired radio button for gender
    #SeleniumLibrary.Select radio button   radiooptions  Male

#Selecting language

    #SeleniumLibrary.Select From List By Element       id:msdd    Bulgarian 

    #sleep   2s

#selecting Hobbies
    #SeleniumLibrary.Select checkbox   Cricket 
    #sleep   2s

#Selectiing Skills
    #SeleniumLibrary.Select From List By Label     Skills   APIs

    #select From List By index     7
    #sleep   2s

#Selecting country
    #SeleniumLibrary.Select From List By value  id:country    Australia

    Choose File    ${File Input Locator}    ${File_path}

    #Execute JavaScript    document.getElementById('countries').options.add(new Option('${Manually_entered_country}'));
    #Select From list by label      countries      ${Manually_entered_country}


    
    

    #Select From List By Index        id:Skills   43
    sleep       2
    #Click Element    xpath://*[@id="submitbtn"]  




    #form-control ng-pristine ng-invalid ng-invalid-required ng-touched    Australia 
   
    
    Sleep    5s  # Add a small delay for visual verification


   
   