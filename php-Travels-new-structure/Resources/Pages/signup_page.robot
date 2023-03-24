*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Signup}
#Elementos da página de registro
...    Input_PrimeiroNome=//input[@placeholder="First Name"]
...    Input_UltimoNome=//input[@placeholder="Last Name"]
...    Input_Telefone=//input[@placeholder="Phone"]
...    Input_Email=//input[@placeholder="Email"]
...    Input_Senha=//input[@placeholder="Password"]
...    Select_Account=//select[@id="account_type"]
...    Captcha=//div[@class="g-recaptcha"]
...    Button_Signup=//button[@class="btn btn-default btn-lg btn-block effect ladda-button waves-effect"]
...    Button_Cookie=//button[@id="cookie_stop"]

*** Keywords ***
E realize o cadastro
    Wait Until Element Is Visible      ${Home.A_Account}            10
    Click Element                      ${Home.A_Account}
    Click Element                      ${Home.A_Signup}
    Wait Until Element Is Visible      ${Signup.Input_PrimeiroNome}  10
    Input Text                         ${Signup.Input_PrimeiroNome}  ${Usuario.PrimeiroNome}
    Wait Until Element Is Visible      ${Signup.Input_UltimoNome}    10
    Input Text                         ${Signup.Input_UltimoNome}    ${Usuario.UltimoNome}     
    Wait Until Element Is Visible      ${Signup.Input_Telefone}      10
    Input Text                         ${Signup.Input_Telefone}      ${Usuario.Telefone}  
    Wait Until Element Is Visible      ${Signup.Input_Email}         10
    Input Text                         ${Signup.Input_Email}         ${Usuario.Email}  
    Wait Until Element Is Visible      ${Signup.Input_Senha}         10 
    Input Text                         ${Signup.Input_Senha}         ${Usuario.Senha}
    Wait Until Element Is Visible      ${Signup.Select_Account}         10 
    Select From List By Value          ${Signup.Select_Account}      ${Usuario.Account} 
    Sleep        10
    #Wait Until Element Is Visible      ${Login.Captcha}       10
    #Press Keys                         ${Login.Captcha}    ENTER
    #Click Element                      ${Login.Captcha}          
    Wait Until Element Is Visible      ${Signup.Button_Cookie}       10
    Click Element                      ${Signup.Button_Cookie}          
    Wait Until Element Is Visible      ${Signup.Button_Signup}       10 
    Sleep                              2s
    Run Keyword And Ignore Error       Click Element                      ${Signup.Button_Signup}    
    Click Element                      ${Signup.Button_Signup}
