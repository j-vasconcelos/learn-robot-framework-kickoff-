** Settings **
Library  SeleniumLibrary

** Variables **
${var1}

** Keywords **
Open Fatec Rubens Lara
    Open Browser    https://fatecrl.edu.br    chrome
    Close Browser

Open Gmail
    Open Browser    https://mail.google.com    chrome

** Test Cases **
Scene 1: Open Web Site Fatec Rubens Lara
    [Tags]  regressivo
    Open Fatec Rubens Lara

#Scene 1: Open Web Site Gmail
#    Open Gmail   
#    CloseBrowser
    
