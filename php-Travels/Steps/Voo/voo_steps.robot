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