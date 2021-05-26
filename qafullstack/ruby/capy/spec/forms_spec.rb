describe 'Forms' do
    it'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in'userId', with: 'stark' #Id
        fill_in'password', with: 'jarvis!' #name

        #fill_in encontra o forms e de acordo com o 'Id' e 'name'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        #identificar a mensagem da pagina pra verificação se deu certo o acesso.
        
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

end        