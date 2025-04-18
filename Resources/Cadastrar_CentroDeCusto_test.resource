*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${url}    https://black-list-front.qacoders.dev.br/login
${email_QACoders}    sysadmin@qacoders.com
${senha_QACoders}    1234@Test
${inserir_email}    //*[@id="email"]
${inserir_senha}    //*[@id="password"]
${clicar_botão_login}   //button[normalize-space()='Entrar']
${clicar_cadastro}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig']
${clicar_CentroDeCusto}    //*[@id="Centro de Custo"]/span
${clicar_NovoCadastro}    //button[@id='Novo Cadastro']
${Cadastrar_CentroDeCusto}    //*[@id="costCentername"]
${clicar_botão_Salvar_Novo}    //*[@id="save"]



*** Keywords ***
Abrir Navegador
    Open Browser    browser=headlessfirefox
    Maximize Browser Window

Fechar Navegador
    Close Browser

Passo 1 - acessar pagina login QA Coders
    Go To    url=${url}

Passo 2 - Digitar Email QA Coders
    Wait Until Element Is Visible    locator=${inserir_email}
    Input Text    locator=${inserir_email}    text=${email_QACoders}    
    Sleep    1s

Passo 3 - Inserir Senha
    Wait Until Element Is Visible    locator=${inserir_senha}
    Input Password    locator=${inserir_senha}    password=${senha_QACoders}
    Sleep    1s

Passo 4 - Clicar Botão Entrar
    Wait Until Element Is Visible    locator=${clicar_botão_login}
    Click Button    locator=${clicar_botão_login}
    Sleep    1s

Passo 5 - Clicar em Cadastro
    Wait Until Element Is Visible    locator=${clicar_cadastro}
    Click Element    locator=${clicar_cadastro}
    Sleep    1s

Passo 6 - Clicar em Centro de Custo
    Wait Until Element Is Visible    locator=${clicar_CentroDeCusto}
    Click Element    locator=${clicar_CentroDeCusto}
    Sleep    1s

Passo 7 - Clicar Novo Cadastro
    Wait Until Element Is Visible    locator=${clicar_NovoCadastro}
    Click Button    locator=${clicar_NovoCadastro}
    Sleep    1s

Passo 8 - Cadastrar Centro de Custo
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             S${palavra_randomica}
    Log                     ${FULL_NAME}
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}   text=${FULL_NAME}
    Sleep    1s

Passo 9 - Clicar Botão Salvar Novo
    Wait Until Element Is Visible    locator=${clicar_botão_Salvar_Novo}
    Click Button    locator=${clicar_botão_Salvar_Novo}
    Sleep    1s

Passo 10 - Validação Centro de Custo Cadastrado
    Wait Until Element Is Visible    locator=${clicar_novo_cadastro}
    Click Button    locator=${clicar_novo_cadastro}\
    Wait Until Element Is Visible    locator=${Cadastrar_CentroDeCusto}
    Input Text    locator=${Cadastrar_CentroDeCusto}    text=Slvhvqltu
    Wait Until Element Is Visible    locator=${clicar_botão_salvarNovo}
    Click Button    locator=${clicar_botão_salvarNovo}
    Sleep    1s

Passo 11 - Validação de Mensagem Centro de Custo
    Wait Until Page Contains    text=Não é possível salvar esse registro. Centro de custos já cadastrado no sistema.
    Wait Until Page Contains Element    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Não é possível salvar esse registro. Centro de custos já cadastrado no sistema.')]
    Sleep    1s
 
