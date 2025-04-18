*** Settings ***
Resource    ../Resources/Criar_Departamento_test.resource
Test Setup  Abrir Navegador

*** Test Cases ***

CT07 - Criar Departamento
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Criar Nome Departamento
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Departamento Criado
    Passo 11 - Validação de Mensagem 
    

    

