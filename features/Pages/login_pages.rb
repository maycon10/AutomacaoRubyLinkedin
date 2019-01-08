class LoginPage

    include Capybara::DSL

    def faz_login(email, senha)

        find('input[class=login-email]').set email
        find('input[class=login-password]').set senha
        find('#login-submit').click

    end

    def pesquisa_linkedin(texto_pesquisa)
        
        element = find('input[role=combobox]').set texto_pesquisa
        element.send_keys:enter 

        sleep 5

    end

    def btnConexoes()

        click_button "Conexões"

        sleep 5

    end

    def selecionar_checkbox()
        
        find("li:nth-child(2) > label > p > span", :visible => true).click
                        
    end

    def btnAplicar()

        click_button "Aplicar"
        
        sleep 10
    end
    
    def btnConectar()
        
            #page.all("button[data-control-name='srp_profile_actions']").each do |el|
               
            page.execute_script "window.scrollBy(0,10000)"
            page.execute_script "window.scrollBy(10000,0)"
            while page.has_css?("button[data-control-name='srp_profile_actions']") do
           
                
            first("button[data-control-name='srp_profile_actions']").click
            find("section[class=modal]") 
            sleep 10
            click_button(class: %w(button-primary-large ml1))
            sleep 3
            
          
            
            
        end
    
    end
    
end


