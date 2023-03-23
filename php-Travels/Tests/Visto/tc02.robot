*** Settings ***
Resource    ../../Steps/main_steps.robot

*** Test Cases ***
TC02 - Solicitar visto Americano
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    E acesso a página de visto
    E informo o pais de origem sendo o Brazil
    E informo o pais de destino sendo o United States
    #E informo a data 02-02-2024
    Quando eu clico em buscar visto
    E fecho o navegador