module CadastrarModule

    def preencher_dados_incorretos(string)
        case
        string
        when 'nome'
        input_email.send_keys "teste@gmail.com"
        input_senha.send_keys "Teste1234"
        when 'email'
        input_nome.send_keys "João do Barro"
        input_senha.send_keys "Teste1234"
        when 'senha'
        input_nome.send_keys "João do Barro"
        input_email.send_keys "teste@gmail.com"
        else
        raise 'Campo náo existe'
        end
    end

    def preencher_dados_correto 
        input_nome.send_keys "João do Barro"
        input_email.send_keys "teste@gmail.com"
        input_senha.send_keys "Teste123"
        button_cadastrar.click
    end   

    def preencher_dados_faltando(string)
        case
        string
        when 'nome'
        input_nome.send_keys "Teste"    
        input_email.send_keys "teste@gmail.com"
        input_senha.send_keys "Teste1234"
        when 'email'
        input_nome.send_keys "João do Barro"
        input_email.send_keys "testegmailcom"
        input_senha.send_keys "Teste1234"
        when 'senha'
        input_nome.send_keys "João do Barro"
        input_email.send_keys "teste@gmail.com"
        input_senha.send_keys "tgjhu"
        else
        raise 'Campo náo existe'
        end
    end

end