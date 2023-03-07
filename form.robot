** Settings **
Library  SeleniumLibrary

** Variables **
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password
${textarea_address}    id:address
${button_submit}       name:submit


** Keywords **
Abrir navegador
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome
   
Preencer campos
    Input Text    ${input_name}          Joao
    Input Text    ${input_phone}         11999934555
    Input Text    ${input_email}         joao@joao.com
    Input Text    ${input_password}      teste123
    Input Text    ${textarea_address}    R. Jose 14 - Interlagos, São Paulo - SP

Clicar em Submit
    Click Element    ${button_submit} 

Fechar navegador
    Close Browser
    

** Test Cases **
Scene 1: Preencher Formnulario
    Abrir navegador
    Preencer campos
    Clicar em Submit
    Fechar navegador
    
