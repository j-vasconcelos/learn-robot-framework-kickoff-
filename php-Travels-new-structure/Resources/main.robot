*** Settings ***
Library    SeleniumLibrary


### Data ###
Resource    Dados/geral.robot
Resource    Dados/usuario.robot

### Shared ###
Resource    Shared/setup_teardown.robot

### Pages ###
Resource    Pages/home_page.robot
Resource    Pages/login_page.robot
Resource    Pages/signup_page.robot
Resource    Pages/voo_page.robot
Resource    Pages/visto_page.robot
