*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Home}
...    A_Account=//button[@id="ACCOUNT"]
...    A_Signup=//a[@href="https://phptravels.net/signup"] 
...    A_voos=//a[contains(text(),"flights")] 
...    A_Visto=//a[@href="https://phptravels.net/visa"] 

*** Keywords ***
Dado que acesso a página de visto
    Wait Until Element Is Visible  ${Home.A_Visto}  10
    Click Element  ${Home.A_Visto}
