*** Settings *** 
Library    SeleniumLibrary 

*** Variables *** 
${browser}    chrome
${url}    https://demo.nopcommerce.com/login


*** Test Cases ***
TstingInputBox
    SeleniumLibrary.open browser    ${url}    ${browser} 
    
    maximize browser window
    sleep   2
   
    SeleniumLibrary.Click link  xpath: //a[@class='ico-login']


    ${"email_text"}    BuiltIn.set Variable   id:Email

    element should be visible    ${"email_text"}
    element should be enabled    ${"email_text"}
    #element should not be visible    ${"email_text"}


    SeleniumLibrary.input text  ${"email_text"}  johnDavid@gmail.com 
    sleep   5
    clear element text  ${"email_text"}
    sleep   3
    close browser
