*** Settings ***
Resource    ../Resources/Cadastrar_CentroDeCusto_test.resource
Test Setup  Abrir Navegador

*** Test Cases ***
CT01 - Cadastrar Centro de Custo
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Cadastrar Centro de Custo
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação Centro de Custo Cadastrado
    Passo 11 - Validação de Mensagem Centro de Custo