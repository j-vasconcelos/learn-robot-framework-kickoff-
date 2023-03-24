*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Google}
...    Input_Pesquisar=//input[@class="gLFyf"]
...    A_PrimeiroLink=(//a[contains(@href,'')])[30]
...    A_SegundoLink=(//a[contains(@href,'')])[49]

*** Keywords ***
Dado que eu acesse o site do Google
    Open Browser  ${Geral.URL_Google}  ${Geral.Browser}
    Maximize Browser Window

E pesquiso por ${texto}
    Wait Until Element Is Visible  ${Google.Input_Pesquisar}  10
    Input Text                     ${Google.Input_Pesquisar}  ${texto}
    Press Keys                     ${Google.Input_Pesquisar}  ENTER

E clico no primeiro link
    Wait Until Element Is Visible  ${Google.A_PrimeiroLink}  10
    Click Element                  ${Google.A_PrimeiroLink}  CTRL

E clico no segundo link
    Wait Until Element Is Visible  ${Google.A_SegundoLink}  10
    Click Element                  ${Google.A_SegundoLink}  CTRL