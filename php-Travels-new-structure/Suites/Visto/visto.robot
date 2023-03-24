*** Settings ***
Resource    ../../Resources/main.robot
Test Setup     Acessar o site e logar
Test Teardown  Fechar navegador

*** Test Cases ***
TC02 - Solicitar visto Americano
    Dado que acesso a página de visto
    E informo o pais de origem sendo o Brazil
    E informo o pais de destino sendo o United States
    #E informo a data 02-02-2024
    Quando eu clico em buscar visto