*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Login}
#Elementos página de Login
...    Input_EmailLogin=//input[@placeholder="Email"] 
...    Input_SenhaLogin=//input[@placeholder="Password"]
...    Button_Logar=//span[contains(text(),"Login")]
...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]

*** Keywords ***
Dado que eu acesse o php travels
    Open Browser  ${Geral.URL}  ${Geral.Browser}
    Maximize Browser Window

E faça o Login
    Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
    Input Text                     ${Login.Input_EmailLogin}  ${Usuario.Email}
    Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
    Input Text                     ${Login.Input_SenhaLogin}  ${Usuario.Senha}
    #Run Keyword And Ignore Error   Wait Until Element Is Visible  ${Login.Button_Cookie}     5
    #Run Keyword And Ignore Error   Click Element                  ${Login.Button_Cookie}
    Wait Until Element Is Visible  ${Login.Button_Logar}      10
    Click Element                  ${Login.Button_Logar} 
