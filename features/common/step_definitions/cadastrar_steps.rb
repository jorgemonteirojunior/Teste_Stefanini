Dado('que preencher os dados corretamente') do
  @cadastrar.preencher_dados_correto
end 

Quando('clicar em cadastrar') do
  @cadastrar.button_cadastrar.click 

end

Então('irei visualizar os meus dados') do
  @cadastrar.name_check.visible?
end

Dado('que preencher {string} vazio') do |string|
  @cadastrar.preencher_dados_incorretos(string)
end

Então('irei visualizar a mensagem de erro') do
  @cadastrar.msg_erro.visible?
end

Dado('que preencher o campo {string} incorreto\/incompleto') do |string|
  @cadastrar.preencher_dados_faltando(string)
end

E('excluo o meu cadastro') do 
  @cadastrar.excluir_usr.click
end   