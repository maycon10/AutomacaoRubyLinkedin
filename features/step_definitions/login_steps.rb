
    Dado("que eu acesso à página de login") do
        visit ("https://www.linkedin.com/")
    end
    
    Quando("eu faço login com {string} e {string}") do |email, senha|

        @login= LoginPage.new
        @login.faz_login(email, senha)

    end
    
    Então("devo ser autenticado com sucesso {string}") do |nome_membro|
        
        expect(page).to have_content nome_membro
    
    end
    
    Então("Digito no campo de pesquisa a palavra {string}") do |texto_pesquisa|
    
        @login.pesquisa_linkedin(texto_pesquisa)
    
    end
    
    Então("Clico em conexões") do
        
        @login.btnConexoes

    end
    
    Então("Seleciono a pesquisa de segundo grau") do 
        
        @login.selecionar_checkbox
     

    end
    
    Então("Clico em aplicar") do
        
        @login.btnAplicar
       
    end
    
    Então("Faço conexão") do
        
       @login.btnConectar
    
    end
    
  