*** Settings ***
Resource    ../../Resources/main.robot
Test Setup     Acessar o site e logar
Test Teardown  Fechar navegador

*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu realizo uma busca de um vôo ida e volta
    E saindo de Los Angeles EUA
    E indo para Guarulhos BRA
    E saindo na data 02-04-2023
    E quantidade de passageiros
    Quando eu clico em buscar