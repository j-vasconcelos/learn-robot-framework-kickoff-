** Settings **
Library  SeleniumLibrary

** Variables **
#Variáveis de configuração
${url}                 https://www.youtube.com 
${browser}             chrome

#Dados do teste
${NomeDaMusica}        Matheus Vasconcelos Tô de Volta
${NomeDaMusica2}       Renato Milagres Ciclo

#Elementos
${input_Pesquisa}     //input[@id="search"]
${primeiro_Video}     (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${validacao}          //div[@id="subscribe-button"]

** Keywords **
Dado que eu acesso o site do YouTube
    Open Browser    ${url}     ${browser}  
Quando eu digito o nome da musica
    Input Text    ${input_Pesquisa}    ${NomeDaMusica} 

E clico no botão buscar
    Press Keys     ${input_Pesquisa}    RETURN

E clico na primeira opção da lista
     Wait Until Element Is Visible     ${primeiro_Video}     2
     Click Element     ${primeiro_Video}

Então o vídeo é executado
    Wait Until Element Is Visible    ${validacao}     2
    Element Should Be Visible    ${validacao} 
    Sleep     2s
    Close Browser
 
** Test Cases **
Scene 1: Executar video no YouTube
    Dado que eu acesso o site do YouTube
    Quando eu digito o nome da musica
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado
    
    