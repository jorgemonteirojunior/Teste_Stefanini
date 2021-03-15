#MAPEAMENTO DA PAGINA PRINCIPAL DO SITE
class CadastrarScreen < SitePrism::Page
    include BaseScreen
    include CadastrarModule

    element :input_nome, '#name'
    element :input_email, '#email'
    element :input_senha, '#password'
    element :button_excluir, '#removeUser1'
    element :button_cadastrar, '#register'
    element :name_check, '#tdUserName1'
    element :msg_erro, '.error'
    element :excluir_usr, '#removeUser1'

end