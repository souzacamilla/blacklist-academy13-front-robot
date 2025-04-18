*** Settings ***
Resource    ../Resources/Cadastrar_CentroDeCusto_test.resource

Library    SeleniumLibrary
Library    String

*** Variables ***

*** Keywords ***
Passo 8 - Nome Centro de Custo em Branco
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=
    Sleep    1s

Passo 10 - Validação de Mensagem Centro de Custo em Branco
    Wait Until Page Contains    text=O campo diretoria é obrigatório
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr'][contains(.,'O campo diretoria é obrigatório')]
    Sleep    1s
 
##########################

### Centro de Custo com Números

Passo 8 - Centro de Custo com Números
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=123456
    Sleep    1s

Passo 10 - Validação de Mensagem Centro de Custo com Números
    Wait Until Page Contains    text=O campo 'centro de custos' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s


### Centro de Custo com Caractere Especial

Passo 8 - Centro de Custo com Caractere Especial
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=@#%=?£§
    Sleep    1s

Passo 10 - Validação de Mensagem Centro de Custo Caractere Especial
    Wait Until Page Contains    text=O campo 'centro de custos' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s

###    Centro de Custo Mais de 50 Caracteres

Passo 8 - Centro de Custo Mais de 50 Caracteres
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=abcdefghijklmnopqrstuvxwzabcabcdefghijklmnopqrstuvxwz
    Sleep    1s

Passo 10 - Validação de Mensagem Mais de 50 Caracteres
    Wait Until Page Contains    text=O campo diretoria pode ter no máximo 50 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr'][contains(.,'O campo diretoria pode ter no máximo 50 caracteres')]
    Sleep    1s

###    Centro de Custo com 1 Caractere
Passo 8 - Centro de Custo com 1 Caractere
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=a
    Sleep    1s

Passo 10 - Validação de Mensagem com 1 Caractere
    Wait Until Page Contains    text=O campo diretoria deve conter no minímo 2 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-kl4grr'][contains(.,'O campo diretoria deve conter no minímo 2 caracteres')]
    Sleep    1s


