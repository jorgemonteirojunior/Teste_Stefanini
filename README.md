## <h1> Arquitetura do projeto</h1>
# Configurando sua máquina
# Necessário instalar:

* Ruby for Windows: linguagem de programação utilizada nos testes.
* Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
* DevKit: Kit de ferramentas que o sistema operacional precisa para que o desenvolvimento funcione.
* Chromedriver: Driver do navegador que será utilizado na automação. Disponível no site do https://sites.google.com/a/chromium.org/chromedriver/downloads.
* Atom: Editor de texto com funções úteis para escrever o código da automação de testes.

## <h1>Configurando o ambiente de automação de testes Web</h1>
 Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:
# Windows
1. Instalando o Console do Cmder

* Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip 
* Descompactar na pasta C:\Cmder.
* Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho.
* Executar o cmder.exe.<h5>

2. Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)

* Baixe em: http://rubyinstaller.org/downloads/.
* Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
* Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
* No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.

3. Instalando Devkit
* Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe.
* Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.
* Acesse o diretório C:\Ruby23-x64.
* Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
* Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
* No Console do Cmder, digite os comandos:
 
     cd/
     cd C:\Ruby23-x64\devkit
     ruby dk.rb init
     ruby dk.rb install

4. Alterando os sources do rubygems
O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https, e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o seguinte:
No Console do Cmder, digite o comando:

    gem sources -a http://rubygems.org/
    gem sources -r https://rubygems.org/
    
5. Instalando o bundler
No Console do Cmder, digite o comando:

    gem install bundler    
    
6. Instalando o chromedriver
Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .

* Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin.

E pronto, ambiente configurado.    

<h3>Automação de Testes<h3>
Para a automação de testes algumas gems do Ruby são essenciais, sendo elas:

* Cucumber
* Capybara
* Selenium-webdriver

Para manter o controle das Gems usadas no projeto, adicione no arquivo Gemfile e serão instaladas de uma só vez. Com o arquivo Gemfile configurado, utiliza-se a gem bundler para instalação das dependências listadas:

    cd C:pasta_do_seu_projeto
    gem install bundler
    bundle
    
<h3>Aprendendo a usar o env.rb<h3>
O env.rb inicializa configurações do teste, tal como o navegador que deve ser utilizado.
O require sob em memória os arquivos das Gems necessárias.
Gem SitePrism
O SitePrism é uma gem do ruby que facilita no mapeamento ou organização de todos os elementos que serão utilizados no projeto de automação. Facilitando o uso do famoso padrão de projeto chamado de Page Object. Sua semântica/sintaxe é tão legível quanto o Capybara.<h5>

# Gem Faker
O Faker é um gem do Ruby que gera dados aleatórios (“fakes”) para diversos tipos de necessidades, como por exemplo:

* Nome
* Sobrenome
* Cidade
* Estado
* Telefone

Para maiores informações[links](https://github.com/stympy/faker)

##Hooks.rb
O termo hook do inglês significa gancho. E trazendo para o nosso contexto de automação, o arquivo hooks.rb é quem armazena todo o código que fará uma ação em momentos que serão estabelecidos através deste arquivo. Por exemplo, dois momentos em que podemos acrescentar ações em nossa automação é:

* Antes da nossa automação iniciar a execução, que é o período antes de um cenário de teste iniciar a execução.
* E após o termino da execução de um cenário, período após finalizar um cenário de teste.

O Ruby entende estes momentos quando utilizamos as seguintes palavras chaves:

* Before
* After

##Configurando Profiles no arquivo cucumber.yml
O arquivo cucumber.yml é utilizado para definir os profiles utilizados para nossa automação.Veja o exemplo clicando no link:
[links](https://raw.githubusercontent.com/felipeqa/Walmart_Projeto_de_Automacao_de_Testes_com_Cucumber/master/readme_images/yml.png)

É possível manter um profile default (para execução padrão dos teste), neste caso o navegador padrão é o chrome e o arquivo de massas é o dev.yaml. Também é possível executar outros profiles a partir dos profiles definidos no arquivo, por exemplo: Quero executar os testes no internet explorer e utilizar o arquivo de massa de dados de homologação, então ficaria assim o nosso comando:

    cucumber -p internet_explorer -p hmg
Os profiles podem ser usados para diversas configurações como ambiente, massa, browser, entre outros.

##Utilizando Tags
Utilizamos a tag para diferenciar os cenários por grupos, funcionalidades ou etapas de testes. As tags são inseridas na linha de cima do nome do cenário. No terminal, quando quisermos rodar os cenários que estão nomeados com tags, basta utilizarmos o seguinte comando:

Cucumber –-tag @nome_da_tag Ou Cucumber –t @nome_da_tag

Esse comando rodará todos os cenários que tiverem a tag.

##Executando os testes automatizados
Para executar o testes automatizados usaremos alguns comandos a partir da pasta raiz do nosso projeto.

* Para execução de todos os cenários implementados com o navegador chrome padrão utilizamos o seguinte código

    cucumber
    
##Para execução de todos os cenários e gerar um report em html, utilizamos o seguinte código:
   
    cucumber --format html --out report.html   
    


