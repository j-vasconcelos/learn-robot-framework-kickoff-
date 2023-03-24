*** Settings ***
Resource    ../../Resources/main.robot
Test Teardown  Fechar navegador

*** Test Cases ***
TC01 - Pesquisar no Google
    Dado que eu acesse o site do Google
    E pesquiso por Receita de lasanha
    E clico no primeiro link
    E clico no segundo link