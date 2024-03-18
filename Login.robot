***Settings***
Library   SeleniumLibrary
Library   dataDriver ../


***Variables***
${BROWSER}          chrome    
${URL}              https://tutorialsninja.com/demo/index.php?route=account/login
${username_field}   //*[@id="input-email"]
${password_field}   //*[@id="input-password"]
${login_button}     //*[@id="content"]/div/div[2]/div/form/input
${username}          fonepay123@gmail.com
${password}          Fonepay123@







***Test Cases***
Login with vaild credentials
  Login verification 
  












***Keywords***
Login verification with valid credentials
  open Browser    ${URL}     ${BROWSER}
  Maximize Browser Window
  sleep   2s

#Test with both valid credentials 
  Input text    ${username_field}     ${username}
  sleep   2s
  Input text    ${password_field}     ${password}
  Click Element   ${login_button}
  

  
