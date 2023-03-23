*** Settings ***
Resource    ../../Steps/main_steps.robot

*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu acesse o php travels
    E realize o cadastro 
    E faça o Login
    Quando eu realizo uma busca de um vôo ida e volta
    E saindo de Los Angeles EUA
    E indo para Guarulhos BRA
    E saindo na data 02-04-2023
    E quantidade de passageiros
    Quando eu clico em buscar
    E fecho o navegador