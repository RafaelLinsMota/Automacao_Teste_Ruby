describe 'FORMS', :form do
    it'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'
        
        click_button 'Login'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada'
    end

end        