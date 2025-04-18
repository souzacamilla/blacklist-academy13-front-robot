*** Settings ***
Resource    ../Resources/Criar_Departamento_exception_test.resource
Resource    ../Resources/Criar_Departamento_test.resource
Test Setup    Abrir Navegador


*** Test Cases ***
CT08 - Nome Departamento em Branco
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Departamento em Branco
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem em Branco

CT09 - Nome Departamento com Números
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Departamento com Números
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem com Números

CT10 - Nome Departamento com Caractere Especial
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Departamento com Caractere Especial
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Caractere Especial

CT11 - Nome Departamento Mais de 50 Caracteres
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Departamento Mais de 50 Caracteres
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Mais de 50 Caracteres

CT12 - Nome Departamento com 1 Caractere
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Departamento
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Departamento com 1 Caractere
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem com 1 Caractere
    
    
   