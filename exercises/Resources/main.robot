*** Settings ***
Library    SeleniumLibrary


### Data ###
Resource    Dados/geral.robot

### Shared ###
Resource    Shared/teardown.robot

### Sites ###
Resource    Sites/google_site.robot
Resource    Sites/pelando_site.robot
