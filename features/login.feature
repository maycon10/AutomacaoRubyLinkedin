#language:pt

Funcionalidade: login e pesquisa
    
    Para que eu possa fazer login no site e interagir com outros profissionais
    Sendo um usuário 
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    @logout
    Cenário: Usuário deve ser autorizado

        Dado que eu acesso à página de login
        Quando eu faço login com "Usuário Linkedin" e "Senha Linkedin"  
        Então devo ser autenticado com sucesso "Maycon Douglas"
        E Digito no campo de pesquisa a palavra "Profissionais"
        E Clico em conexões
        E Seleciono a pesquisa de segundo grau 
        E Clico em aplicar
        E Faço conexão 
     


