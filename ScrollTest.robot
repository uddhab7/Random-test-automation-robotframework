***Settings***
Library   SeleniumLibrary



***Test Cases***
ScrollTest
  SeleniumLibrary.open Browser    https://demo.automationtesting.in/Register.html    Chrome
  Maximize Browser Window 
  sleep   2s
  execute javascript  window.scrollTo(0,1500)
  Execute JavaScript    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
#or
  Scroll Element into view  xpath://*[@id="imagetrgt"]
#or
  #End of the page
  execute JavaScript  window.scrollTo(0,document.body.scrollHeight)
  sleep   5s
  #Starting point
  execute JavaScript  window.scrollTo(0,-document.body.scrollHeight)
  sleep   5s




  sleep     5s
  


