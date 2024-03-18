*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://demo.automationtesting.in/Register.html
${File_path}    "C:\Users\Ram\Desktop\Rara_Murma_Village.png"
${File Input Locator}   //*[@id="imagesrc"]



***Test Cases***
abc
    Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window
    sleep   2s


    Choose File    ${File Input Locator}    ${File_path}