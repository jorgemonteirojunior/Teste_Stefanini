# language: pt
Funcionalidade: Tela de cadastro de novo usuario

@cadastrar01 @cadastrar
Cenário: Cadastrar um novo usuario com sucesso
    Dado que preencher os dados corretamente
    Então irei visualizar os meus dados

@cadastrar02 @cadastrar
Esquema do Cenário: Cadastrar um novo usuario com campo dados faltando
    Dado que preencher '<campo>' vazio
    Quando clicar em cadastrar
    Então irei visualizar a mensagem de erro
Exemplos:
    |campo  |
    |nome   |
    |email  |
    |senha  |

@cadastrar03 @cadastrar
Esquema do Cenário: Cadastrar um novo usuario com campo nome incompleto e senha errada
    Dado que preencher o campo '<campo>' incorreto/incompleto
    Quando clicar em cadastrar
    Então irei visualizar a mensagem de erro
Exemplos:
    |campo  |
    |nome   |
    |email  |
    |senha  |

@cadastrar04 @cadastrar
Cenário: Excluir um usuario
    Dado que preencher os dados corretamente
    Quando clicar em cadastrar
    Então irei visualizar os meus dados
    E excluo o meu cadastro