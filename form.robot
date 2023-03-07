** Settings **
Library  SeleniumLibrary

** Variables **
${url}                 https://itera-qa.azurewebsites.net/home/automation
${browser}             chrome
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password
${textarea_address}    id:address
${button_submit}       name:submit
${rb_gender}           id:male
${chk_monday}          id:monday
${chk_wednesday}       id:wednesday
${chk_friday}          id:friday

** Keywords **
Abrir navegador
    Open Browser    ${url}     ${browser}  
   
Preencer campos
    Input Text    ${input_name}          Joao
    Input Text    ${input_phone}         11999934555
    Input Text    ${input_email}         joao@joao.com
    Input Text    ${input_password}      teste123
    Input Text    ${textarea_address}    R. Jose 14 - Interlagos, São Paulo - SP

CheckBox & Radio Button 
    Click Element          ${rb_gender} 
    Select Checkbox        ${chk_monday}  
    Select Checkbox        ${chk_wednesday}  
    Select Checkbox        ${chk_friday}

Clicar em Submit
    Click Element    ${button_submit} 

Fechar navegador
    Close Browser
    

** Test Cases **
Scene 1: Preencher Formnulario
    Abrir navegador
    Preencer campos
    Clicar em Submit
    #Fechar navegador
    
Scene 2: Selecionar CheckBox & Radio Button 
    #Abrir navegador
    CheckBox & Radio Button
    Fechar navegador