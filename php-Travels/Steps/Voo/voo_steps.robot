*** Settings ***
Resource    ../../Elements/main_elements.resource
Resource    ../../Resource/settings.resource

*** Keywords ***
Quando eu realizo uma busca de um vôo ida e volta
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
    
    
