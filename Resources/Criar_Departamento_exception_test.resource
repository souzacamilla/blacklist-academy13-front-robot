*** Settings ***
Resource    ../Resources/Criar_Departamento_test.resource

Library    SeleniumLibrary
Library    String

*** Variables ***

*** Keywords ***
Passo 8 - Nome Departamento em Branco
    Wait Until Element Is Visible    locator=${criar_departamento}
    Input Text    locator=${criar_departamento}    text=
    Sleep    1s

Passo 10 - Validação de Mensagem em Branco
    Wait Until Page Contains    text=O campo diretoria é obrigatório
    Wait Until Page Contains Element    locator=//p[@class='css-bbipig'][contains(.,'O campo diretoria é obrigatório')]
    Sleep    1s
 
##########################

### Nome Departamento com Números

Passo 8 - Nome Departamento com Números
    Wait Until Element Is Visible    locator=${criar_departamento}
    Input Text    locator=${criar_departamento}    text=123456
    Sleep    1s

Passo 10 - Validação de Mensagem com Números
    Wait Until Page Contains    text=O campo 'departamento' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    
    

### Nome Departamento com Caractere Especial

Passo 8 - Nome Departamento com Caractere Especial
    Wait Until Element Is Visible    locator=${criar_departamento}
    Input Text    locator=${criar_departamento}    text=@#%=?£§
    Sleep    1s

Passo 10 - Validação de Mensagem Caractere Especial
    Wait Until Page Contains    text=O campo 'departamento' só pode conter letras e o caractere especial '&'.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d']
    Sleep    1s


###    Nome Departamento Mais de 50 Caracteres

Passo 8 - Nome Departamento Mais de 50 Caracteres
    Wait Until Element Is Visible    locator=${criar_departamento}
    Input Text    locator=${criar_departamento}    text=vgjaujajajaujajajatyqajagvbyhuohlgbyuioklybhguohlbuyoluhbuyi
    Sleep    1s

Passo 10 - Validação de Mensagem Mais de 50 Caracteres
    Wait Until Page Contains    text=O campo diretoria pode ter no máximo 50 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-bbipig'][contains(.,'O campo diretoria pode ter no máximo 50 caracteres')]
    Sleep    1s

###    Nome Departamento com 1 Caractere
Passo 8 - Nome Departamento com 1 Caractere
    Wait Until Element Is Visible    locator=${criar_departamento}
    Input Text    locator=${criar_departamento}    text=a
    Sleep    1s

Passo 10 - Validação de Mensagem com 1 Caractere
    Wait Until Page Contains    text=O campo diretoria deve conter no minímo 2 caracteres
    Wait Until Page Contains Element    locator=//p[@class='css-bbipig'][contains(.,'O campo diretoria deve conter no minímo 2 caracteres')]
    Sleep    1s