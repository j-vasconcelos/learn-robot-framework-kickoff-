*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Voo}
#Elementos da página do vôo
...    Input_IdaeVolta=//input[@id="round-trip"]
...    Input_Ida=//input[@id="autocomplete"]
...    Input_Volta=//input[@id="autocomplete2"] 
...    Input_DataIda=(//input[@id="departure"])[1]
...    Input_DataVolta=(//input[@id="return"])[1]
...    A_PassageirosDrop=//a[@href="#"]
...    Div_QtdPassageiros=(//div[@class="qtyInc"])[1]
...    Button_PesquisarVoo=//button[@id="flights-search"]

*** Keywords ***
Dado que eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${Home.A_voos}           20
    Click Element                  ${Home.A_voos}
    Wait Until Element Is Visible  ${Voo.Input_IdaeVolta}   20
    Click Element                  ${Voo.Input_IdaeVolta}

E saindo de ${Texto}
    Wait Until Element Is Visible  ${Voo.Input_Ida}  20
    Input Text                     ${Voo.Input_Ida}  ${Texto}
    Press Keys                     ${Voo.Input_Ida}  ARROW_DOWN
    Press Keys                     ${Voo.Input_Ida}  ENTER 

E indo para ${Texto}
    Wait Until Element Is Visible  ${Voo.Input_Volta}  20
    Input Text                     ${Voo.Input_Volta}  ${Texto}
    Press Keys                     ${Voo.Input_Volta}  ARROW_DOWN
    Press Keys                     ${Voo.Input_Volta}  ENTER 

E saindo na data ${Texto}
    Wait Until Element Is Visible  ${Voo.Input_DataIda}  20
    Input Text                     ${Voo.Input_DataIda}  ${Texto}

E quantidade de passageiros
    Wait Until Element Is Visible  ${Voo.A_PassageirosDrop}  20
    Press Keys                     ${Voo.A_PassageirosDrop}  ENTER 
    Click Element                  ${Voo.Div_QtdPassageiros}
    Click Element                  ${Voo.Div_QtdPassageiros}

Quando eu clico em buscar
    Wait Until Element Is Visible  ${Voo.Button_PesquisarVoo}  20
    Click Element                  ${Voo.Button_PesquisarVoo}