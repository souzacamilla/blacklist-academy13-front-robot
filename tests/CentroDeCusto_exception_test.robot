*** Settings ***
Resource    ../Resources/Cadastrar_CentroDeCusto_exception_test.resource
Resource    ../Resources/Cadastrar_CentroDeCusto_test.resource
Test Setup    Abrir Navegador


*** Test Cases ***
CT02 - Nome Centro de Custo em Branco
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Nome Centro de Custo em Branco
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Centro de Custo em Branco

CT03 - Centro de Custo com Números
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Centro de Custo com Números
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Centro de Custo com Números

CT04 - Centro de Custo com Caractere Especial
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Centro de Custo com Caractere Especial
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Centro de Custo Caractere Especial

CT05 - Centro de Custo Mais de 50 Caracteres
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Centro de Custo Mais de 50 Caracteres
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem Mais de 50 Caracteres

CT06 - Centro de Custo com 1 Caractere
    Passo 1 - acessar pagina login QA Coders
    Passo 2 - Digitar Email QA Coders
    Passo 3 - Inserir Senha
    Passo 4 - Clicar Botão Entrar
    Passo 5 - Clicar em Cadastro
    Passo 6 - Clicar em Centro de Custo
    Passo 7 - Clicar Novo Cadastro
    Passo 8 - Centro de Custo com 1 Caractere
    Passo 9 - Clicar Botão Salvar Novo
    Passo 10 - Validação de Mensagem com 1 Caractere
    
    
    
    
    