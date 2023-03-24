*** Settings ***
Resource    ../main.robot

*** Variables ***
&{Visto}
#Elementos da página de visto
...    Select_PaisOrigem=//span[@data-select2-id="1"]
...    Select_PaisDestino=//span[@data-select2-id="3"]
...    Input_Pais=//input[@class="select2-search__field"]
...    Input_Data=//input[@id="date"]
...    Button_Pesquisar=//button[@id="submit"]

*** Keywords ***
E informo o pais de origem sendo o ${Texto}
    Wait Until Element Is Visible  ${Visto.Select_PaisOrigem}  20
    Click Element                  ${Visto.Select_PaisOrigem}
    Wait Until Element Is Visible  ${Visto.Input_Pais}  20
    Input Text                     ${Visto.Input_Pais}  ${Texto}
    Press Keys                     ${Visto.Input_Pais}  ENTER

E informo o pais de destino sendo o ${Texto}
    Wait Until Element Is Visible  ${Visto.Select_PaisDestino}  20
    Click Element                  ${Visto.Select_PaisDestino}
    Wait Until Element Is Visible  ${Visto.Input_Pais}  20
    Input Text                     ${Visto.Input_Pais}  ${Texto}
    Press Keys                     ${Visto.Input_Pais}  ENTER

#E informo a data ${Texto}
#    Wait Until Element Is Visible  ${Visto.Input_Data}  20
#    Input Text                     ${Visto.Input_Data}  ${Texto}

Quando eu clico em buscar visto
    Wait Until Element Is Visible  ${Visto.Button_Pesquisar}  20
    Click Element                  ${Visto.Button_Pesquisar}
    