***Settings***
Library   SeleniumLibrary

***Variables***
${url}       https://practicetestautomation.com/practice-test-login/
${browser}   chrome

***Test Cases***
InputBox
    SeleniumLibrary.open browser    ${url}    ${browser}
    maximize browser window
    sleep   2

#Input Query in search field 

    SeleniumLibrary.input text       xpath://*[@id="username"]    student 
    #sleep   2
    SeleniumLibrary.input text       xpath://*[@id="password"]    Password123
    sleep   3


#Google search
 #Wait Until Element Is Visible     xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[1]
 Click button   xpath://button[@id='submit']

  



#I'm feeling lucky
    #Click button     xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[2]
    #SeleniumLibrary.clear element text   xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    sleep   3


  #Input text  xpath://body/div[@id='searchform']/div[2]/form[1]/div[1]/div[1]/div[3]/div[1]/div[2]   Facebook
  #Click button  xpath://body/div[@id='searchform']/div[2]/form[1]/div[1]/div[1]/div[3]/button[1]


***Keywords***
    Wait Until Element Is Visible     xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[1]
    Click Element     xpath://body/div[1]/div[3]/form[1]/div[1]/div[1]/div[4]/center[1]/input[1]

