*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Radio Button Selection
  InsideWebsite 
   


***Keywords*** 
InsideWebsite
    SeleniumLibrary.Open Browser    https://artoftesting.com/samplesiteforselenium    chrome
  
    Maximize Browser Window
    # Replace the locator with the actual locator of your radio button

    #selecting radiobuton
    SeleniumLibrary.Select Radio Button   gender  male
      
    sleep  5

    #selecting checkbox
     SeleniumLibrary.Select checkbox   Automation
     sleep  5 
    
